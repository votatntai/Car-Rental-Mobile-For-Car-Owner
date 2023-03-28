// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthData _$AuthDataFromJson(Map<String, dynamic> json) {
  return _AuthData.fromJson(json);
}

/// @nodoc
mixin _$AuthData {
  AuthenticationStatus get status => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDataCopyWith<AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res, AuthData>;
  @useResult
  $Res call({AuthenticationStatus status, Role role});
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res, $Val extends AuthData>
    implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$$_AuthDataCopyWith(
          _$_AuthData value, $Res Function(_$_AuthData) then) =
      __$$_AuthDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatus status, Role role});
}

/// @nodoc
class __$$_AuthDataCopyWithImpl<$Res>
    extends _$AuthDataCopyWithImpl<$Res, _$_AuthData>
    implements _$$_AuthDataCopyWith<$Res> {
  __$$_AuthDataCopyWithImpl(
      _$_AuthData _value, $Res Function(_$_AuthData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? role = null,
  }) {
    return _then(_$_AuthData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthData implements _AuthData {
  _$_AuthData({required this.status, required this.role});

  factory _$_AuthData.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDataFromJson(json);

  @override
  final AuthenticationStatus status;
  @override
  final Role role;

  @override
  String toString() {
    return 'AuthData(status: $status, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthDataCopyWith<_$_AuthData> get copyWith =>
      __$$_AuthDataCopyWithImpl<_$_AuthData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDataToJson(
      this,
    );
  }
}

abstract class _AuthData implements AuthData {
  factory _AuthData(
      {required final AuthenticationStatus status,
      required final Role role}) = _$_AuthData;

  factory _AuthData.fromJson(Map<String, dynamic> json) = _$_AuthData.fromJson;

  @override
  AuthenticationStatus get status;
  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDataCopyWith<_$_AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
