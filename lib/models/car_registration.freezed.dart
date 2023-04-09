// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarRegistration _$CarRegistrationFromJson(Map<String, dynamic> json) {
  return _CarRegistration.fromJson(json);
}

/// @nodoc
mixin _$CarRegistration {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;
  String get transmissionType => throw _privateConstructorUsedError;
  String get fuelType => throw _privateConstructorUsedError;
  int get seater => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get fuelConsumption => throw _privateConstructorUsedError;
  int get yearOfManufacture => throw _privateConstructorUsedError;
  String get productionCompany => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get chassis => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  CarOwner get carOwner => throw _privateConstructorUsedError;
  AdditionalCharge get additionalCharge => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarRegistrationCopyWith<CarRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarRegistrationCopyWith<$Res> {
  factory $CarRegistrationCopyWith(
          CarRegistration value, $Res Function(CarRegistration) then) =
      _$CarRegistrationCopyWithImpl<$Res, CarRegistration>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String licensePlate,
      String transmissionType,
      String fuelType,
      int seater,
      double price,
      String fuelConsumption,
      int yearOfManufacture,
      String productionCompany,
      String location,
      String model,
      String chassis,
      DateTime createAt,
      String? description,
      bool status,
      CarOwner carOwner,
      AdditionalCharge additionalCharge,
      List<ImageModel>? images});

  $CarOwnerCopyWith<$Res> get carOwner;
  $AdditionalChargeCopyWith<$Res> get additionalCharge;
}

/// @nodoc
class _$CarRegistrationCopyWithImpl<$Res, $Val extends CarRegistration>
    implements $CarRegistrationCopyWith<$Res> {
  _$CarRegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? licensePlate = null,
    Object? transmissionType = null,
    Object? fuelType = null,
    Object? seater = null,
    Object? price = null,
    Object? fuelConsumption = null,
    Object? yearOfManufacture = null,
    Object? productionCompany = null,
    Object? location = null,
    Object? model = null,
    Object? chassis = null,
    Object? createAt = null,
    Object? description = freezed,
    Object? status = null,
    Object? carOwner = null,
    Object? additionalCharge = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      transmissionType: null == transmissionType
          ? _value.transmissionType
          : transmissionType // ignore: cast_nullable_to_non_nullable
              as String,
      fuelType: null == fuelType
          ? _value.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String,
      seater: null == seater
          ? _value.seater
          : seater // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      fuelConsumption: null == fuelConsumption
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as String,
      yearOfManufacture: null == yearOfManufacture
          ? _value.yearOfManufacture
          : yearOfManufacture // ignore: cast_nullable_to_non_nullable
              as int,
      productionCompany: null == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      chassis: null == chassis
          ? _value.chassis
          : chassis // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      carOwner: null == carOwner
          ? _value.carOwner
          : carOwner // ignore: cast_nullable_to_non_nullable
              as CarOwner,
      additionalCharge: null == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as AdditionalCharge,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarOwnerCopyWith<$Res> get carOwner {
    return $CarOwnerCopyWith<$Res>(_value.carOwner, (value) {
      return _then(_value.copyWith(carOwner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionalChargeCopyWith<$Res> get additionalCharge {
    return $AdditionalChargeCopyWith<$Res>(_value.additionalCharge, (value) {
      return _then(_value.copyWith(additionalCharge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarRegistrationCopyWith<$Res>
    implements $CarRegistrationCopyWith<$Res> {
  factory _$$_CarRegistrationCopyWith(
          _$_CarRegistration value, $Res Function(_$_CarRegistration) then) =
      __$$_CarRegistrationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String licensePlate,
      String transmissionType,
      String fuelType,
      int seater,
      double price,
      String fuelConsumption,
      int yearOfManufacture,
      String productionCompany,
      String location,
      String model,
      String chassis,
      DateTime createAt,
      String? description,
      bool status,
      CarOwner carOwner,
      AdditionalCharge additionalCharge,
      List<ImageModel>? images});

  @override
  $CarOwnerCopyWith<$Res> get carOwner;
  @override
  $AdditionalChargeCopyWith<$Res> get additionalCharge;
}

/// @nodoc
class __$$_CarRegistrationCopyWithImpl<$Res>
    extends _$CarRegistrationCopyWithImpl<$Res, _$_CarRegistration>
    implements _$$_CarRegistrationCopyWith<$Res> {
  __$$_CarRegistrationCopyWithImpl(
      _$_CarRegistration _value, $Res Function(_$_CarRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? licensePlate = null,
    Object? transmissionType = null,
    Object? fuelType = null,
    Object? seater = null,
    Object? price = null,
    Object? fuelConsumption = null,
    Object? yearOfManufacture = null,
    Object? productionCompany = null,
    Object? location = null,
    Object? model = null,
    Object? chassis = null,
    Object? createAt = null,
    Object? description = freezed,
    Object? status = null,
    Object? carOwner = null,
    Object? additionalCharge = null,
    Object? images = freezed,
  }) {
    return _then(_$_CarRegistration(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      transmissionType: null == transmissionType
          ? _value.transmissionType
          : transmissionType // ignore: cast_nullable_to_non_nullable
              as String,
      fuelType: null == fuelType
          ? _value.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String,
      seater: null == seater
          ? _value.seater
          : seater // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      fuelConsumption: null == fuelConsumption
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as String,
      yearOfManufacture: null == yearOfManufacture
          ? _value.yearOfManufacture
          : yearOfManufacture // ignore: cast_nullable_to_non_nullable
              as int,
      productionCompany: null == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      chassis: null == chassis
          ? _value.chassis
          : chassis // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      carOwner: null == carOwner
          ? _value.carOwner
          : carOwner // ignore: cast_nullable_to_non_nullable
              as CarOwner,
      additionalCharge: null == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as AdditionalCharge,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarRegistration implements _CarRegistration {
  _$_CarRegistration(
      {required this.id,
      this.name,
      required this.licensePlate,
      required this.transmissionType,
      required this.fuelType,
      required this.seater,
      required this.price,
      required this.fuelConsumption,
      required this.yearOfManufacture,
      required this.productionCompany,
      required this.location,
      required this.model,
      required this.chassis,
      required this.createAt,
      this.description,
      required this.status,
      required this.carOwner,
      required this.additionalCharge,
      final List<ImageModel>? images})
      : _images = images;

  factory _$_CarRegistration.fromJson(Map<String, dynamic> json) =>
      _$$_CarRegistrationFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String licensePlate;
  @override
  final String transmissionType;
  @override
  final String fuelType;
  @override
  final int seater;
  @override
  final double price;
  @override
  final String fuelConsumption;
  @override
  final int yearOfManufacture;
  @override
  final String productionCompany;
  @override
  final String location;
  @override
  final String model;
  @override
  final String chassis;
  @override
  final DateTime createAt;
  @override
  final String? description;
  @override
  final bool status;
  @override
  final CarOwner carOwner;
  @override
  final AdditionalCharge additionalCharge;
  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CarRegistration(id: $id, name: $name, licensePlate: $licensePlate, transmissionType: $transmissionType, fuelType: $fuelType, seater: $seater, price: $price, fuelConsumption: $fuelConsumption, yearOfManufacture: $yearOfManufacture, productionCompany: $productionCompany, location: $location, model: $model, chassis: $chassis, createAt: $createAt, description: $description, status: $status, carOwner: $carOwner, additionalCharge: $additionalCharge, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarRegistration &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.transmissionType, transmissionType) ||
                other.transmissionType == transmissionType) &&
            (identical(other.fuelType, fuelType) ||
                other.fuelType == fuelType) &&
            (identical(other.seater, seater) || other.seater == seater) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.fuelConsumption, fuelConsumption) ||
                other.fuelConsumption == fuelConsumption) &&
            (identical(other.yearOfManufacture, yearOfManufacture) ||
                other.yearOfManufacture == yearOfManufacture) &&
            (identical(other.productionCompany, productionCompany) ||
                other.productionCompany == productionCompany) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.chassis, chassis) || other.chassis == chassis) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.carOwner, carOwner) ||
                other.carOwner == carOwner) &&
            (identical(other.additionalCharge, additionalCharge) ||
                other.additionalCharge == additionalCharge) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        licensePlate,
        transmissionType,
        fuelType,
        seater,
        price,
        fuelConsumption,
        yearOfManufacture,
        productionCompany,
        location,
        model,
        chassis,
        createAt,
        description,
        status,
        carOwner,
        additionalCharge,
        const DeepCollectionEquality().hash(_images)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarRegistrationCopyWith<_$_CarRegistration> get copyWith =>
      __$$_CarRegistrationCopyWithImpl<_$_CarRegistration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarRegistrationToJson(
      this,
    );
  }
}

abstract class _CarRegistration implements CarRegistration {
  factory _CarRegistration(
      {required final String id,
      final String? name,
      required final String licensePlate,
      required final String transmissionType,
      required final String fuelType,
      required final int seater,
      required final double price,
      required final String fuelConsumption,
      required final int yearOfManufacture,
      required final String productionCompany,
      required final String location,
      required final String model,
      required final String chassis,
      required final DateTime createAt,
      final String? description,
      required final bool status,
      required final CarOwner carOwner,
      required final AdditionalCharge additionalCharge,
      final List<ImageModel>? images}) = _$_CarRegistration;

  factory _CarRegistration.fromJson(Map<String, dynamic> json) =
      _$_CarRegistration.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String get licensePlate;
  @override
  String get transmissionType;
  @override
  String get fuelType;
  @override
  int get seater;
  @override
  double get price;
  @override
  String get fuelConsumption;
  @override
  int get yearOfManufacture;
  @override
  String get productionCompany;
  @override
  String get location;
  @override
  String get model;
  @override
  String get chassis;
  @override
  DateTime get createAt;
  @override
  String? get description;
  @override
  bool get status;
  @override
  CarOwner get carOwner;
  @override
  AdditionalCharge get additionalCharge;
  @override
  List<ImageModel>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_CarRegistrationCopyWith<_$_CarRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}
