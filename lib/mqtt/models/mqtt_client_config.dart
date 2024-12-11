import 'package:freezed_annotation/freezed_annotation.dart';

part 'mqtt_client_config.freezed.dart';

@freezed
class MqttClientConfig with _$MqttClientConfig {
  const factory MqttClientConfig({
    required String host,
    @Default(1883) int port,
    @Default('zigbee2mqtt_flutter') String clientIdentifier,
    String? username,
    String? password,
  }) = _MqttClientConfig;
}
