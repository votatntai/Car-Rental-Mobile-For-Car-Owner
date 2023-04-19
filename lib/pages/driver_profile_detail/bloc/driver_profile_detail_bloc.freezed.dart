// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_profile_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DriverProfileDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? name, String? address, String? gender, String? phone)
        saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String? name, String? address, String? gender, String? phone)?
        saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? name, String? address, String? gender, String? phone)?
        saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileDetailEventCopyWith<$Res> {
  factory $DriverProfileDetailEventCopyWith(DriverProfileDetailEvent value,
          $Res Function(DriverProfileDetailEvent) then) =
      _$DriverProfileDetailEventCopyWithImpl<$Res, DriverProfileDetailEvent>;
}

/// @nodoc
class _$DriverProfileDetailEventCopyWithImpl<$Res,
        $Val extends DriverProfileDetailEvent>
    implements $DriverProfileDetailEventCopyWith<$Res> {
  _$DriverProfileDetailEventCopyWithImpl(this._value, this._then);

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
    extends _$DriverProfileDetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DriverProfileDetailEvent.started()';
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
    required TResult Function(
            String? name, String? address, String? gender, String? phone)
        saved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String? name, String? address, String? gender, String? phone)?
        saved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? name, String? address, String? gender, String? phone)?
        saved,
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
    required TResult Function(_Saved value) saved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Saved value)? saved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DriverProfileDetailEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, String? address, String? gender, String? phone});
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$DriverProfileDetailEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_Saved(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved({this.name, this.address, this.gender, this.phone});

  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? gender;
  @override
  final String? phone;

  @override
  String toString() {
    return 'DriverProfileDetailEvent.saved(name: $name, address: $address, gender: $gender, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Saved &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, gender, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedCopyWith<_$_Saved> get copyWith =>
      __$$_SavedCopyWithImpl<_$_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? name, String? address, String? gender, String? phone)
        saved,
  }) {
    return saved(name, address, gender, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String? name, String? address, String? gender, String? phone)?
        saved,
  }) {
    return saved?.call(name, address, gender, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? name, String? address, String? gender, String? phone)?
        saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(name, address, gender, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements DriverProfileDetailEvent {
  const factory _Saved(
      {final String? name,
      final String? address,
      final String? gender,
      final String? phone}) = _$_Saved;

  String? get name;
  String? get address;
  String? get gender;
  String? get phone;
  @JsonKey(ignore: true)
  _$$_SavedCopyWith<_$_Saved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverProfileDetailState {
  Driver? get driver => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverProfileDetailStateCopyWith<DriverProfileDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverProfileDetailStateCopyWith<$Res> {
  factory $DriverProfileDetailStateCopyWith(DriverProfileDetailState value,
          $Res Function(DriverProfileDetailState) then) =
      _$DriverProfileDetailStateCopyWithImpl<$Res, DriverProfileDetailState>;
  @useResult
  $Res call({Driver? driver});

  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class _$DriverProfileDetailStateCopyWithImpl<$Res,
        $Val extends DriverProfileDetailState>
    implements $DriverProfileDetailStateCopyWith<$Res> {
  _$DriverProfileDetailStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_DriverProfileDetailStateCopyWith<$Res>
    implements $DriverProfileDetailStateCopyWith<$Res> {
  factory _$$_DriverProfileDetailStateCopyWith(
          _$_DriverProfileDetailState value,
          $Res Function(_$_DriverProfileDetailState) then) =
      __$$_DriverProfileDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Driver? driver});

  @override
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class __$$_DriverProfileDetailStateCopyWithImpl<$Res>
    extends _$DriverProfileDetailStateCopyWithImpl<$Res,
        _$_DriverProfileDetailState>
    implements _$$_DriverProfileDetailStateCopyWith<$Res> {
  __$$_DriverProfileDetailStateCopyWithImpl(_$_DriverProfileDetailState _value,
      $Res Function(_$_DriverProfileDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = freezed,
  }) {
    return _then(_$_DriverProfileDetailState(
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ));
  }
}

/// @nodoc

class _$_DriverProfileDetailState implements _DriverProfileDetailState {
  const _$_DriverProfileDetailState({this.driver});

  @override
  final Driver? driver;

  @override
  String toString() {
    return 'DriverProfileDetailState(driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverProfileDetailState &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverProfileDetailStateCopyWith<_$_DriverProfileDetailState>
      get copyWith => __$$_DriverProfileDetailStateCopyWithImpl<
          _$_DriverProfileDetailState>(this, _$identity);
}

abstract class _DriverProfileDetailState implements DriverProfileDetailState {
  const factory _DriverProfileDetailState({final Driver? driver}) =
      _$_DriverProfileDetailState;

  @override
  Driver? get driver;
  @override
  @JsonKey(ignore: true)
  _$$_DriverProfileDetailStateCopyWith<_$_DriverProfileDetailState>
      get copyWith => throw _privateConstructorUsedError;
}
