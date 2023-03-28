// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  AuthData get authData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthData authData) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthData authData)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthData authData)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChangedEvent value) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChangedEvent value)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChangedEvent value)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationEventCopyWith<AuthenticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
  @useResult
  $Res call({AuthData authData});

  $AuthDataCopyWith<$Res> get authData;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authData = null,
  }) {
    return _then(_value.copyWith(
      authData: null == authData
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthDataCopyWith<$Res> get authData {
    return $AuthDataCopyWith<$Res>(_value.authData, (value) {
      return _then(_value.copyWith(authData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatusChangedEventCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory _$$_StatusChangedEventCopyWith(_$_StatusChangedEvent value,
          $Res Function(_$_StatusChangedEvent) then) =
      __$$_StatusChangedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthData authData});

  @override
  $AuthDataCopyWith<$Res> get authData;
}

/// @nodoc
class __$$_StatusChangedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_StatusChangedEvent>
    implements _$$_StatusChangedEventCopyWith<$Res> {
  __$$_StatusChangedEventCopyWithImpl(
      _$_StatusChangedEvent _value, $Res Function(_$_StatusChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authData = null,
  }) {
    return _then(_$_StatusChangedEvent(
      authData: null == authData
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData,
    ));
  }
}

/// @nodoc

class _$_StatusChangedEvent implements _StatusChangedEvent {
  const _$_StatusChangedEvent({required this.authData});

  @override
  final AuthData authData;

  @override
  String toString() {
    return 'AuthenticationEvent.statusChanged(authData: $authData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusChangedEvent &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusChangedEventCopyWith<_$_StatusChangedEvent> get copyWith =>
      __$$_StatusChangedEventCopyWithImpl<_$_StatusChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthData authData) statusChanged,
  }) {
    return statusChanged(authData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthData authData)? statusChanged,
  }) {
    return statusChanged?.call(authData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthData authData)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(authData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChangedEvent value) statusChanged,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChangedEvent value)? statusChanged,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChangedEvent value)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _StatusChangedEvent implements AuthenticationEvent {
  const factory _StatusChangedEvent({required final AuthData authData}) =
      _$_StatusChangedEvent;

  @override
  AuthData get authData;
  @override
  @JsonKey(ignore: true)
  _$$_StatusChangedEventCopyWith<_$_StatusChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  AuthData get authData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call({AuthData authData});

  $AuthDataCopyWith<$Res> get authData;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authData = null,
  }) {
    return _then(_value.copyWith(
      authData: null == authData
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthDataCopyWith<$Res> get authData {
    return $AuthDataCopyWith<$Res>(_value.authData, (value) {
      return _then(_value.copyWith(authData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthData authData});

  @override
  $AuthDataCopyWith<$Res> get authData;
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_AuthenticationState>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authData = null,
  }) {
    return _then(_$_AuthenticationState(
      authData: null == authData
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState({required this.authData});

  @override
  final AuthData authData;

  @override
  String toString() {
    return 'AuthenticationState(authData: $authData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationState &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      __$$_AuthenticationStateCopyWithImpl<_$_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState({required final AuthData authData}) =
      _$_AuthenticationState;

  @override
  AuthData get authData;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
