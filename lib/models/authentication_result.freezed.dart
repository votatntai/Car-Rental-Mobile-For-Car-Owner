// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationResult _$AuthenticationResultFromJson(Map<String, dynamic> json) {
  return _AuthenticationResult.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationResult {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationResultCopyWith<AuthenticationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResultCopyWith<$Res> {
  factory $AuthenticationResultCopyWith(AuthenticationResult value,
          $Res Function(AuthenticationResult) then) =
      _$AuthenticationResultCopyWithImpl<$Res, AuthenticationResult>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$AuthenticationResultCopyWithImpl<$Res,
        $Val extends AuthenticationResult>
    implements $AuthenticationResultCopyWith<$Res> {
  _$AuthenticationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticationResultCopyWith<$Res>
    implements $AuthenticationResultCopyWith<$Res> {
  factory _$$_AuthenticationResultCopyWith(_$_AuthenticationResult value,
          $Res Function(_$_AuthenticationResult) then) =
      __$$_AuthenticationResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_AuthenticationResultCopyWithImpl<$Res>
    extends _$AuthenticationResultCopyWithImpl<$Res, _$_AuthenticationResult>
    implements _$$_AuthenticationResultCopyWith<$Res> {
  __$$_AuthenticationResultCopyWithImpl(_$_AuthenticationResult _value,
      $Res Function(_$_AuthenticationResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_AuthenticationResult(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationResult implements _AuthenticationResult {
  _$_AuthenticationResult({required this.token});

  factory _$_AuthenticationResult.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationResultFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticationResult(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationResult &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationResultCopyWith<_$_AuthenticationResult> get copyWith =>
      __$$_AuthenticationResultCopyWithImpl<_$_AuthenticationResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationResultToJson(
      this,
    );
  }
}

abstract class _AuthenticationResult implements AuthenticationResult {
  factory _AuthenticationResult({required final String token}) =
      _$_AuthenticationResult;

  factory _AuthenticationResult.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationResult.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationResultCopyWith<_$_AuthenticationResult> get copyWith =>
      throw _privateConstructorUsedError;
}
