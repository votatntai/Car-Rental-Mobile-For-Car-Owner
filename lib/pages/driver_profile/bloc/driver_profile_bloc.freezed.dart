// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DriverProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileEventCopyWith<$Res> {
  factory $DriverProfileEventCopyWith(
          DriverProfileEvent value, $Res Function(DriverProfileEvent) then) =
      _$DriverProfileEventCopyWithImpl<$Res, DriverProfileEvent>;
}

/// @nodoc
class _$DriverProfileEventCopyWithImpl<$Res, $Val extends DriverProfileEvent>
    implements $DriverProfileEventCopyWith<$Res> {
  _$DriverProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DriverProfileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DriverProfileEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DriverProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$DriverProfileState {
  Driver? get driver => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverProfileStateCopyWith<DriverProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileStateCopyWith<$Res> {
  factory $DriverProfileStateCopyWith(
          DriverProfileState value, $Res Function(DriverProfileState) then) =
      _$DriverProfileStateCopyWithImpl<$Res, DriverProfileState>;
  @useResult
  $Res call({Driver? driver});

  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class _$DriverProfileStateCopyWithImpl<$Res, $Val extends DriverProfileState>
    implements $DriverProfileStateCopyWith<$Res> {
  _$DriverProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = freezed,
  }) {
    return _then(_value.copyWith(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverProfileStateCopyWith<$Res>
    implements $DriverProfileStateCopyWith<$Res> {
  factory _$$_DriverProfileStateCopyWith(_$_DriverProfileState value,
          $Res Function(_$_DriverProfileState) then) =
      __$$_DriverProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Driver? driver});

  @override
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class __$$_DriverProfileStateCopyWithImpl<$Res>
    extends _$DriverProfileStateCopyWithImpl<$Res, _$_DriverProfileState>
    implements _$$_DriverProfileStateCopyWith<$Res> {
  __$$_DriverProfileStateCopyWithImpl(
      _$_DriverProfileState _value, $Res Function(_$_DriverProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = freezed,
  }) {
    return _then(_$_DriverProfileState(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ));
  }
}

/// @nodoc

class _$_DriverProfileState implements _DriverProfileState {
  const _$_DriverProfileState({this.driver});

  @override
  final Driver? driver;

  @override
  String toString() {
    return 'DriverProfileState(driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverProfileState &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverProfileStateCopyWith<_$_DriverProfileState> get copyWith =>
      __$$_DriverProfileStateCopyWithImpl<_$_DriverProfileState>(
          this, _$identity);
}

abstract class _DriverProfileState implements DriverProfileState {
  const factory _DriverProfileState({final Driver? driver}) =
      _$_DriverProfileState;

  @override
  Driver? get driver;
  @override
  @JsonKey(ignore: true)
  _$$_DriverProfileStateCopyWith<_$_DriverProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
