// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarLocationModel {
  Car get car => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarLocationModelCopyWith<CarLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarLocationModelCopyWith<$Res> {
  factory $CarLocationModelCopyWith(
          CarLocationModel value, $Res Function(CarLocationModel) then) =
      _$CarLocationModelCopyWithImpl<$Res, CarLocationModel>;
  @useResult
  $Res call({Car car, double latitude, double longitude});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$CarLocationModelCopyWithImpl<$Res, $Val extends CarLocationModel>
    implements $CarLocationModelCopyWith<$Res> {
  _$CarLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarLocationModelCopyWith<$Res>
    implements $CarLocationModelCopyWith<$Res> {
  factory _$$_CarLocationModelCopyWith(
          _$_CarLocationModel value, $Res Function(_$_CarLocationModel) then) =
      __$$_CarLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Car car, double latitude, double longitude});

  @override
  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$_CarLocationModelCopyWithImpl<$Res>
    extends _$CarLocationModelCopyWithImpl<$Res, _$_CarLocationModel>
    implements _$$_CarLocationModelCopyWith<$Res> {
  __$$_CarLocationModelCopyWithImpl(
      _$_CarLocationModel _value, $Res Function(_$_CarLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_CarLocationModel(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CarLocationModel implements _CarLocationModel {
  _$_CarLocationModel(
      {required this.car, required this.latitude, required this.longitude});

  @override
  final Car car;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'CarLocationModel(car: $car, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarLocationModel &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, car, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarLocationModelCopyWith<_$_CarLocationModel> get copyWith =>
      __$$_CarLocationModelCopyWithImpl<_$_CarLocationModel>(this, _$identity);
}

abstract class _CarLocationModel implements CarLocationModel {
  factory _CarLocationModel(
      {required final Car car,
      required final double latitude,
      required final double longitude}) = _$_CarLocationModel;

  @override
  Car get car;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_CarLocationModelCopyWith<_$_CarLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
