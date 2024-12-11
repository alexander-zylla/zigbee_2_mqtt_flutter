// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mqtt_client_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MqttClientConfig {
  String get host => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get clientIdentifier => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  /// Create a copy of MqttClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MqttClientConfigCopyWith<MqttClientConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MqttClientConfigCopyWith<$Res> {
  factory $MqttClientConfigCopyWith(
          MqttClientConfig value, $Res Function(MqttClientConfig) then) =
      _$MqttClientConfigCopyWithImpl<$Res, MqttClientConfig>;
  @useResult
  $Res call(
      {String host,
      int port,
      String clientIdentifier,
      String? username,
      String? password});
}

/// @nodoc
class _$MqttClientConfigCopyWithImpl<$Res, $Val extends MqttClientConfig>
    implements $MqttClientConfigCopyWith<$Res> {
  _$MqttClientConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MqttClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? port = null,
    Object? clientIdentifier = null,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      clientIdentifier: null == clientIdentifier
          ? _value.clientIdentifier
          : clientIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MqttClientConfigImplCopyWith<$Res>
    implements $MqttClientConfigCopyWith<$Res> {
  factory _$$MqttClientConfigImplCopyWith(_$MqttClientConfigImpl value,
          $Res Function(_$MqttClientConfigImpl) then) =
      __$$MqttClientConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String host,
      int port,
      String clientIdentifier,
      String? username,
      String? password});
}

/// @nodoc
class __$$MqttClientConfigImplCopyWithImpl<$Res>
    extends _$MqttClientConfigCopyWithImpl<$Res, _$MqttClientConfigImpl>
    implements _$$MqttClientConfigImplCopyWith<$Res> {
  __$$MqttClientConfigImplCopyWithImpl(_$MqttClientConfigImpl _value,
      $Res Function(_$MqttClientConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of MqttClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? port = null,
    Object? clientIdentifier = null,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$MqttClientConfigImpl(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      clientIdentifier: null == clientIdentifier
          ? _value.clientIdentifier
          : clientIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MqttClientConfigImpl implements _MqttClientConfig {
  const _$MqttClientConfigImpl(
      {required this.host,
      this.port = 1883,
      this.clientIdentifier = 'zigbee2mqtt_flutter',
      this.username,
      this.password});

  @override
  final String host;
  @override
  @JsonKey()
  final int port;
  @override
  @JsonKey()
  final String clientIdentifier;
  @override
  final String? username;
  @override
  final String? password;

  @override
  String toString() {
    return 'MqttClientConfig(host: $host, port: $port, clientIdentifier: $clientIdentifier, username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MqttClientConfigImpl &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.clientIdentifier, clientIdentifier) ||
                other.clientIdentifier == clientIdentifier) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, host, port, clientIdentifier, username, password);

  /// Create a copy of MqttClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MqttClientConfigImplCopyWith<_$MqttClientConfigImpl> get copyWith =>
      __$$MqttClientConfigImplCopyWithImpl<_$MqttClientConfigImpl>(
          this, _$identity);
}

abstract class _MqttClientConfig implements MqttClientConfig {
  const factory _MqttClientConfig(
      {required final String host,
      final int port,
      final String clientIdentifier,
      final String? username,
      final String? password}) = _$MqttClientConfigImpl;

  @override
  String get host;
  @override
  int get port;
  @override
  String get clientIdentifier;
  @override
  String? get username;
  @override
  String? get password;

  /// Create a copy of MqttClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MqttClientConfigImplCopyWith<_$MqttClientConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
