import 'dart:async';

import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_config.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_connection_state.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_message.dart';

abstract class MqttClientManager {
  Stream<MqttClientConnectionState> get connectionStateStream;
  Stream<MqttClientMessage> get messageStream;
  Future<void> connect({required MqttClientConfig config});
  void disconnect();
  void publish({required String topic, required String message});
  void subscribe({required String topic});
  void unsubscribe({required String topic});
  void dispose();
}
