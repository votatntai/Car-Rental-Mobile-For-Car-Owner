// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_registration_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarRegistrationDetailEvent {
  String? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id)? started,
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

  @JsonKey(ignore: true)
  $CarRegistrationDetailEventCopyWith<CarRegistrationDetailEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarRegistrationDetailEventCopyWith<$Res> {
  factory $CarRegistrationDetailEventCopyWith(CarRegistrationDetailEvent value,
          $Res Function(CarRegistrationDetailEvent) then) =
      _$CarRegistrationDetailEventCopyWithImpl<$Res,
          CarRegistrationDetailEvent>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$CarRegistrationDetailEventCopyWithImpl<$Res,
        $Val extends CarRegistrationDetailEvent>
    implements $CarRegistrationDetailEventCopyWith<$Res> {
  _$CarRegistrationDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $CarRegistrationDetailEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarRegistrationDetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_Started(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'CarRegistrationDetailEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id) started,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id)? started,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
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

abstract class _Started implements CarRegistrationDetailEvent {
  const factory _Started({final String? id}) = _$_Started;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarRegistrationDetailState {
  CarRegistration? get carRegistration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarRegistrationDetailStateCopyWith<CarRegistrationDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarRegistrationDetailStateCopyWith<$Res> {
  factory $CarRegistrationDetailStateCopyWith(CarRegistrationDetailState value,
          $Res Function(CarRegistrationDetailState) then) =
      _$CarRegistrationDetailStateCopyWithImpl<$Res,
          CarRegistrationDetailState>;
  @useResult
  $Res call({CarRegistration? carRegistration});

  $CarRegistrationCopyWith<$Res>? get carRegistration;
}

/// @nodoc
class _$CarRegistrationDetailStateCopyWithImpl<$Res,
        $Val extends CarRegistrationDetailState>
    implements $CarRegistrationDetailStateCopyWith<$Res> {
  _$CarRegistrationDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carRegistration = freezed,
  }) {
    return _then(_value.copyWith(
      carRegistration: freezed == carRegistration
          ? _value.carRegistration
          : carRegistration // ignore: cast_nullable_to_non_nullable
              as CarRegistration?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarRegistrationCopyWith<$Res>? get carRegistration {
    if (_value.carRegistration == null) {
      return null;
    }

    return $CarRegistrationCopyWith<$Res>(_value.carRegistration!, (value) {
      return _then(_value.copyWith(carRegistration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarRegistrationDetailStateCopyWith<$Res>
    implements $CarRegistrationDetailStateCopyWith<$Res> {
  factory _$$_CarRegistrationDetailStateCopyWith(
          _$_CarRegistrationDetailState value,
          $Res Function(_$_CarRegistrationDetailState) then) =
      __$$_CarRegistrationDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CarRegistration? carRegistration});

  @override
  $CarRegistrationCopyWith<$Res>? get carRegistration;
}

/// @nodoc
class __$$_CarRegistrationDetailStateCopyWithImpl<$Res>
    extends _$CarRegistrationDetailStateCopyWithImpl<$Res,
        _$_CarRegistrationDetailState>
    implements _$$_CarRegistrationDetailStateCopyWith<$Res> {
  __$$_CarRegistrationDetailStateCopyWithImpl(
      _$_CarRegistrationDetailState _value,
      $Res Function(_$_CarRegistrationDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carRegistration = freezed,
  }) {
    return _then(_$_CarRegistrationDetailState(
      carRegistration: freezed == carRegistration
          ? _value.carRegistration
          : carRegistration // ignore: cast_nullable_to_non_nullable
              as CarRegistration?,
    ));
  }
}

/// @nodoc

class _$_CarRegistrationDetailState implements _CarRegistrationDetailState {
  const _$_CarRegistrationDetailState({this.carRegistration});

  @override
  final CarRegistration? carRegistration;

  @override
  String toString() {
    return 'CarRegistrationDetailState(carRegistration: $carRegistration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarRegistrationDetailState &&
            (identical(other.carRegistration, carRegistration) ||
                other.carRegistration == carRegistration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carRegistration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarRegistrationDetailStateCopyWith<_$_CarRegistrationDetailState>
      get copyWith => __$$_CarRegistrationDetailStateCopyWithImpl<
          _$_CarRegistrationDetailState>(this, _$identity);
}

abstract class _CarRegistrationDetailState
    implements CarRegistrationDetailState {
  const factory _CarRegistrationDetailState(
      {final CarRegistration? carRegistration}) = _$_CarRegistrationDetailState;

  @override
  CarRegistration? get carRegistration;
  @override
  @JsonKey(ignore: true)
  _$$_CarRegistrationDetailStateCopyWith<_$_CarRegistrationDetailState>
      get copyWith => throw _privateConstructorUsedError;
}
