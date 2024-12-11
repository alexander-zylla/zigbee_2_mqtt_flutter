import 'package:flutter_test/flutter_test.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/manager/mqtt_client_manager_impl.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_config.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_connection_state.dart';
import 'package:zigbee_2_mqtt_flutter/mqtt/models/mqtt_client_message.dart';

void main() {
  const config = MqttClientConfig(
    host: 'test.mosquitto.org',
    port: 1883,
    clientIdentifier: 'zigbee2mqtt_flutter_test',
  );

  test('MqttClientManagerImpl should connect to the broker', () async {
    final mqttBrokerManager = MqttClientManagerImpl();

    expectLater(
      mqttBrokerManager.connectionStateStream,
      emits(MqttClientConnectionState.connected),
    );

    mqttBrokerManager.connect(config: config);
  });

  test('MqttClientManagerImpl should disconnect from the broker', () async {
    final mqttBrokerManager = MqttClientManagerImpl();

    expectLater(
      mqttBrokerManager.connectionStateStream,
      emitsInOrder([
        MqttClientConnectionState.connected,
        MqttClientConnectionState.disconnected,
      ]),
    );

    await mqttBrokerManager.connect(config: config);
    mqttBrokerManager.disconnect();
  });

  test('MqttClientManagerImpl should receive a message', () async {
    final mqttBrokerManager = MqttClientManagerImpl();

    expectLater(
      mqttBrokerManager.messageStream,
      emits(
        const MqttClientMessage(
          topic: 'zigbee2mqttflutter/test',
          message: 'test',
        ),
      ),
    );

    await mqttBrokerManager.connect(config: config);
    mqttBrokerManager.subscribe(topic: 'zigbee2mqttflutter/test');
    mqttBrokerManager.publish(
      topic: 'zigbee2mqttflutter/test',
      message: 'test',
    );
  });
}
