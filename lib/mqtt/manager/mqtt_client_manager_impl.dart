import 'dart:async';

import 'package:zigbee_2_mqtt_flutter/mqtt/errors/mqtt_client_errors.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/manager/mqtt_client_manager.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_config.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_connection_state.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_message.dart';
import 'package:mqtt_client/mqtt_server_client.dart' as mqtt;
import 'package:mqtt_client/mqtt_client.dart' as mqtt;
import 'dart:developer' as dev;

class MqttClientManagerImpl implements MqttClientManager {
  final StreamController<MqttClientConnectionState> _connectionStateController =
      StreamController<MqttClientConnectionState>.broadcast();

  final StreamController<MqttClientMessage> _messageController =
      StreamController<MqttClientMessage>.broadcast();

  StreamSubscription<List<mqtt.MqttReceivedMessage<mqtt.MqttMessage>>>?
      _streamSubscription;

  mqtt.MqttServerClient? _mqttServerClient;

  @override
  Stream<MqttClientConnectionState> get connectionStateStream =>
      _connectionStateController.stream;

  @override
  Stream<MqttClientMessage> get messageStream => _messageController.stream;

  @override
  Future<void> connect({required MqttClientConfig config}) async {
    _mqttServerClient = mqtt.MqttServerClient.withPort(
      config.host,
      config.clientIdentifier,
      config.port,
    );
    _mqttServerClient?.onDisconnected = _onDisconnected;
    _mqttServerClient?.onConnected = _onConnected;

    try {
      await _mqttServerClient?.connect(
        config.username,
        config.password,
      );
    } catch (_) {
      throw MqttClientConnectionError();
    }
  }

  @override
  void disconnect() {
    try {
      _mqttServerClient?.disconnect();
    } catch (_) {
      throw MqttClientUnknownError();
    }
  }

  @override
  void publish({required String topic, required String message}) {
    try {
      final builder = mqtt.MqttClientPayloadBuilder();
      builder.addString(message);
      _mqttServerClient?.publishMessage(
        topic,
        mqtt.MqttQos.exactlyOnce,
        builder.payload!,
      );
    } catch (_) {
      throw MqttClientUnknownError();
    }
  }

  @override
  void subscribe({required String topic}) {
    final subscription = _mqttServerClient?.subscribe(
      topic,
      mqtt.MqttQos.exactlyOnce,
    );
    if (subscription == null) {
      throw MqttClientUnknownError();
    }
  }

  @override
  void unsubscribe({required String topic}) {
    try {
      _mqttServerClient?.unsubscribe(topic);
    } catch (_) {
      throw MqttClientUnknownError();
    }
  }

  void _onDisconnected() {
    _connectionStateController.add(MqttClientConnectionState.disconnected);
  }

  void _onConnected() {
    _connectionStateController.add(MqttClientConnectionState.connected);
    _streamSubscription = _mqttServerClient?.updates?.listen((event) {
      try {
        final msg = event.first;
        final payload = msg.payload as mqtt.MqttPublishMessage;
        final payloadString = mqtt.MqttPublishPayload.bytesToStringAsString(
          payload.payload.message,
        );
        _messageController.add(
          MqttClientMessage(
            topic: msg.topic,
            message: payloadString,
          ),
        );
      } catch (_) {
        dev.log('Error parsing message on topic: ${event.first.topic}');
      }
    });
  }

  @override
  void dispose() {
    _connectionStateController.close();
    _messageController.close();
    _streamSubscription?.cancel();
    _mqttServerClient?.disconnect();
  }
}
