// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_owner_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarOwnerProfileEvent {
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
abstract class $CarOwnerProfileEventCopyWith<$Res> {
  factory $CarOwnerProfileEventCopyWith(CarOwnerProfileEvent value,
          $Res Function(CarOwnerProfileEvent) then) =
      _$CarOwnerProfileEventCopyWithImpl<$Res, CarOwnerProfileEvent>;
}

/// @nodoc
class _$CarOwnerProfileEventCopyWithImpl<$Res,
        $Val extends CarOwnerProfileEvent>
    implements $CarOwnerProfileEventCopyWith<$Res> {
  _$CarOwnerProfileEventCopyWithImpl(this._value, this._then);

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
    extends _$CarOwnerProfileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CarOwnerProfileEvent.started()';
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

abstract class _Started implements CarOwnerProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$CarOwnerProfileState {
  CarOwner? get carOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarOwnerProfileStateCopyWith<CarOwnerProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarOwnerProfileStateCopyWith<$Res> {
  factory $CarOwnerProfileStateCopyWith(CarOwnerProfileState value,
          $Res Function(CarOwnerProfileState) then) =
      _$CarOwnerProfileStateCopyWithImpl<$Res, CarOwnerProfileState>;
  @useResult
  $Res call({CarOwner? carOwner});

  $CarOwnerCopyWith<$Res>? get carOwner;
}

/// @nodoc
class _$CarOwnerProfileStateCopyWithImpl<$Res,
        $Val extends CarOwnerProfileState>
    implements $CarOwnerProfileStateCopyWith<$Res> {
  _$CarOwnerProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carOwner = freezed,
  }) {
    return _then(_value.copyWith(
      carOwner: freezed == carOwner
          ? _value.carOwner
          : carOwner // ignore: cast_nullable_to_non_nullable
              as CarOwner?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarOwnerCopyWith<$Res>? get carOwner {
    if (_value.carOwner == null) {
      return null;
    }

    return $CarOwnerCopyWith<$Res>(_value.carOwner!, (value) {
      return _then(_value.copyWith(carOwner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarOwnerProfileStateCopyWith<$Res>
    implements $CarOwnerProfileStateCopyWith<$Res> {
  factory _$$_CarOwnerProfileStateCopyWith(_$_CarOwnerProfileState value,
          $Res Function(_$_CarOwnerProfileState) then) =
      __$$_CarOwnerProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CarOwner? carOwner});

  @override
  $CarOwnerCopyWith<$Res>? get carOwner;
}

/// @nodoc
class __$$_CarOwnerProfileStateCopyWithImpl<$Res>
    extends _$CarOwnerProfileStateCopyWithImpl<$Res, _$_CarOwnerProfileState>
    implements _$$_CarOwnerProfileStateCopyWith<$Res> {
  __$$_CarOwnerProfileStateCopyWithImpl(_$_CarOwnerProfileState _value,
      $Res Function(_$_CarOwnerProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carOwner = freezed,
  }) {
    return _then(_$_CarOwnerProfileState(
      carOwner: freezed == carOwner
          ? _value.carOwner
          : carOwner // ignore: cast_nullable_to_non_nullable
              as CarOwner?,
    ));
  }
}

/// @nodoc

class _$_CarOwnerProfileState implements _CarOwnerProfileState {
  const _$_CarOwnerProfileState({this.carOwner});

  @override
  final CarOwner? carOwner;

  @override
  String toString() {
    return 'CarOwnerProfileState(carOwner: $carOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarOwnerProfileState &&
            (identical(other.carOwner, carOwner) ||
                other.carOwner == carOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarOwnerProfileStateCopyWith<_$_CarOwnerProfileState> get copyWith =>
      __$$_CarOwnerProfileStateCopyWithImpl<_$_CarOwnerProfileState>(
          this, _$identity);
}

abstract class _CarOwnerProfileState implements CarOwnerProfileState {
  const factory _CarOwnerProfileState({final CarOwner? carOwner}) =
      _$_CarOwnerProfileState;

  @override
  CarOwner? get carOwner;
  @override
  @JsonKey(ignore: true)
  _$$_CarOwnerProfileStateCopyWith<_$_CarOwnerProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
