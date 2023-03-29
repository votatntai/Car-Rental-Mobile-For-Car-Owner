// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarModel _$CarModelFromJson(Map<String, dynamic> json) {
  return _CarModel.fromJson(json);
}

/// @nodoc
mixin _$CarModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get transmissionType => throw _privateConstructorUsedError;
  String get fuelType => throw _privateConstructorUsedError;
  String get chassis => throw _privateConstructorUsedError;
  int get seater => throw _privateConstructorUsedError;
  int get yearOfManufacture => throw _privateConstructorUsedError;
  String get fuelConsumption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarModelCopyWith<CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelCopyWith<$Res> {
  factory $CarModelCopyWith(CarModel value, $Res Function(CarModel) then) =
      _$CarModelCopyWithImpl<$Res, CarModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String transmissionType,
      String fuelType,
      String chassis,
      int seater,
      int yearOfManufacture,
      String fuelConsumption});
}

/// @nodoc
class _$CarModelCopyWithImpl<$Res, $Val extends CarModel>
    implements $CarModelCopyWith<$Res> {
  _$CarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? transmissionType = null,
    Object? fuelType = null,
    Object? chassis = null,
    Object? seater = null,
    Object? yearOfManufacture = null,
    Object? fuelConsumption = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      transmissionType: null == transmissionType
          ? _value.transmissionType
          : transmissionType // ignore: cast_nullable_to_non_nullable
              as String,
      fuelType: null == fuelType
          ? _value.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String,
      chassis: null == chassis
          ? _value.chassis
          : chassis // ignore: cast_nullable_to_non_nullable
              as String,
      seater: null == seater
          ? _value.seater
          : seater // ignore: cast_nullable_to_non_nullable
              as int,
      yearOfManufacture: null == yearOfManufacture
          ? _value.yearOfManufacture
          : yearOfManufacture // ignore: cast_nullable_to_non_nullable
              as int,
      fuelConsumption: null == fuelConsumption
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarModelCopyWith<$Res> implements $CarModelCopyWith<$Res> {
  factory _$$_CarModelCopyWith(
          _$_CarModel value, $Res Function(_$_CarModel) then) =
      __$$_CarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String transmissionType,
      String fuelType,
      String chassis,
      int seater,
      int yearOfManufacture,
      String fuelConsumption});
}

/// @nodoc
class __$$_CarModelCopyWithImpl<$Res>
    extends _$CarModelCopyWithImpl<$Res, _$_CarModel>
    implements _$$_CarModelCopyWith<$Res> {
  __$$_CarModelCopyWithImpl(
      _$_CarModel _value, $Res Function(_$_CarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? transmissionType = null,
    Object? fuelType = null,
    Object? chassis = null,
    Object? seater = null,
    Object? yearOfManufacture = null,
    Object? fuelConsumption = null,
  }) {
    return _then(_$_CarModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      transmissionType: null == transmissionType
          ? _value.transmissionType
          : transmissionType // ignore: cast_nullable_to_non_nullable
              as String,
      fuelType: null == fuelType
          ? _value.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String,
      chassis: null == chassis
          ? _value.chassis
          : chassis // ignore: cast_nullable_to_non_nullable
              as String,
      seater: null == seater
          ? _value.seater
          : seater // ignore: cast_nullable_to_non_nullable
              as int,
      yearOfManufacture: null == yearOfManufacture
          ? _value.yearOfManufacture
          : yearOfManufacture // ignore: cast_nullable_to_non_nullable
              as int,
      fuelConsumption: null == fuelConsumption
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarModel implements _CarModel {
  _$_CarModel(
      {required this.id,
      required this.name,
      required this.transmissionType,
      required this.fuelType,
      required this.chassis,
      required this.seater,
      required this.yearOfManufacture,
      required this.fuelConsumption});

  factory _$_CarModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String transmissionType;
  @override
  final String fuelType;
  @override
  final String chassis;
  @override
  final int seater;
  @override
  final int yearOfManufacture;
  @override
  final String fuelConsumption;

  @override
  String toString() {
    return 'CarModel(id: $id, name: $name, transmissionType: $transmissionType, fuelType: $fuelType, chassis: $chassis, seater: $seater, yearOfManufacture: $yearOfManufacture, fuelConsumption: $fuelConsumption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.transmissionType, transmissionType) ||
                other.transmissionType == transmissionType) &&
            (identical(other.fuelType, fuelType) ||
                other.fuelType == fuelType) &&
            (identical(other.chassis, chassis) || other.chassis == chassis) &&
            (identical(other.seater, seater) || other.seater == seater) &&
            (identical(other.yearOfManufacture, yearOfManufacture) ||
                other.yearOfManufacture == yearOfManufacture) &&
            (identical(other.fuelConsumption, fuelConsumption) ||
                other.fuelConsumption == fuelConsumption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, transmissionType,
      fuelType, chassis, seater, yearOfManufacture, fuelConsumption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarModelCopyWith<_$_CarModel> get copyWith =>
      __$$_CarModelCopyWithImpl<_$_CarModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarModelToJson(
      this,
    );
  }
}

abstract class _CarModel implements CarModel {
  factory _CarModel(
      {required final String id,
      required final String name,
      required final String transmissionType,
      required final String fuelType,
      required final String chassis,
      required final int seater,
      required final int yearOfManufacture,
      required final String fuelConsumption}) = _$_CarModel;

  factory _CarModel.fromJson(Map<String, dynamic> json) = _$_CarModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get transmissionType;
  @override
  String get fuelType;
  @override
  String get chassis;
  @override
  int get seater;
  @override
  int get yearOfManufacture;
  @override
  String get fuelConsumption;
  @override
  @JsonKey(ignore: true)
  _$$_CarModelCopyWith<_$_CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
