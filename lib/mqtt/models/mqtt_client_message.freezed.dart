// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mqtt_client_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MqttClientMessage {
  String get topic => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of MqttClientMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MqttClientMessageCopyWith<MqttClientMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MqttClientMessageCopyWith<$Res> {
  factory $MqttClientMessageCopyWith(
          MqttClientMessage value, $Res Function(MqttClientMessage) then) =
      _$MqttClientMessageCopyWithImpl<$Res, MqttClientMessage>;
  @useResult
  $Res call({String topic, String message});
}

/// @nodoc
class _$MqttClientMessageCopyWithImpl<$Res, $Val extends MqttClientMessage>
    implements $MqttClientMessageCopyWith<$Res> {
  _$MqttClientMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MqttClientMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MqttClientMessageImplCopyWith<$Res>
    implements $MqttClientMessageCopyWith<$Res> {
  factory _$$MqttClientMessageImplCopyWith(_$MqttClientMessageImpl value,
          $Res Function(_$MqttClientMessageImpl) then) =
      __$$MqttClientMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String topic, String message});
}

/// @nodoc
class __$$MqttClientMessageImplCopyWithImpl<$Res>
    extends _$MqttClientMessageCopyWithImpl<$Res, _$MqttClientMessageImpl>
    implements _$$MqttClientMessageImplCopyWith<$Res> {
  __$$MqttClientMessageImplCopyWithImpl(_$MqttClientMessageImpl _value,
      $Res Function(_$MqttClientMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MqttClientMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? message = null,
  }) {
    return _then(_$MqttClientMessageImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MqttClientMessageImpl implements _MqttClientMessage {
  const _$MqttClientMessageImpl({required this.topic, required this.message});

  @override
  final String topic;
  @override
  final String message;

  @override
  String toString() {
    return 'MqttClientMessage(topic: $topic, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MqttClientMessageImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic, message);

  /// Create a copy of MqttClientMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MqttClientMessageImplCopyWith<_$MqttClientMessageImpl> get copyWith =>
      __$$MqttClientMessageImplCopyWithImpl<_$MqttClientMessageImpl>(
          this, _$identity);
}

abstract class _MqttClientMessage implements MqttClientMessage {
  const factory _MqttClientMessage(
      {required final String topic,
      required final String message}) = _$MqttClientMessageImpl;

  @override
  String get topic;
  @override
  String get message;

  /// Create a copy of MqttClientMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MqttClientMessageImplCopyWith<_$MqttClientMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
