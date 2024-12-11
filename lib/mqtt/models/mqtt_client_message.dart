import 'package:freezed_annotation/freezed_annotation.dart';

part 'mqtt_client_message.freezed.dart';

@freezed
class MqttClientMessage with _$MqttClientMessage {
  const factory MqttClientMessage({
    required String topic,
    required String message,
  }) = _MqttClientMessage;
}
