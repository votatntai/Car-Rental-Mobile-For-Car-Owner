// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get rented => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;
  List<FeedbackModel>? get feedBacks => throw _privateConstructorUsedError;
  List<CarFeature>? get carFeatures => throw _privateConstructorUsedError;
  List<CarType>? get carTypes => throw _privateConstructorUsedError;
  ProductionCompany? get productionCompany =>
      throw _privateConstructorUsedError;
  CarModel get model => throw _privateConstructorUsedError;
  CarOwner? get carOwner => throw _privateConstructorUsedError;
  Driver? get driver => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  AdditionalCharge get additionalCharge => throw _privateConstructorUsedError;
  double get star => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get receiveStartTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get receiveEndTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get returnStartTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get returnEndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String licensePlate,
      double price,
      double rented,
      String? description,
      List<ImageModel>? images,
      List<FeedbackModel>? feedBacks,
      List<CarFeature>? carFeatures,
      List<CarType>? carTypes,
      ProductionCompany? productionCompany,
      CarModel model,
      CarOwner? carOwner,
      Driver? driver,
      Location location,
      AdditionalCharge additionalCharge,
      double star,
      String status,
      @TimeOfDayConverter() TimeOfDay receiveStartTime,
      @TimeOfDayConverter() TimeOfDay receiveEndTime,
      @TimeOfDayConverter() TimeOfDay returnStartTime,
      @TimeOfDayConverter() TimeOfDay returnEndTime});

  $ProductionCompanyCopyWith<$Res>? get productionCompany;
  $CarModelCopyWith<$Res> get model;
  $CarOwnerCopyWith<$Res>? get carOwner;
  $DriverCopyWith<$Res>? get driver;
  $LocationCopyWith<$Res> get location;
  $AdditionalChargeCopyWith<$Res> get additionalCharge;
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

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
    Object? price = null,
    Object? rented = null,
    Object? description = freezed,
    Object? images = freezed,
    Object? feedBacks = freezed,
    Object? carFeatures = freezed,
    Object? carTypes = freezed,
    Object? productionCompany = freezed,
    Object? model = null,
    Object? carOwner = freezed,
    Object? driver = freezed,
    Object? location = null,
    Object? additionalCharge = null,
    Object? star = null,
    Object? status = null,
    Object? receiveStartTime = null,
    Object? receiveEndTime = null,
    Object? returnStartTime = null,
    Object? returnEndTime = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rented: null == rented
          ? _value.rented
          : rented // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      feedBacks: freezed == feedBacks
          ? _value.feedBacks
          : feedBacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackModel>?,
      carFeatures: freezed == carFeatures
          ? _value.carFeatures
          : carFeatures // ignore: cast_nullable_to_non_nullable
              as List<CarFeature>?,
      carTypes: freezed == carTypes
          ? _value.carTypes
          : carTypes // ignore: cast_nullable_to_non_nullable
              as List<CarType>?,
      productionCompany: freezed == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as ProductionCompany?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CarModel,
      carOwner: freezed == carOwner
          ? _value.carOwner
          : carOwner // ignore: cast_nullable_to_non_nullable
              as CarOwner?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      additionalCharge: null == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as AdditionalCharge,
      star: null == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      receiveStartTime: null == receiveStartTime
          ? _value.receiveStartTime
          : receiveStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      receiveEndTime: null == receiveEndTime
          ? _value.receiveEndTime
          : receiveEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      returnStartTime: null == returnStartTime
          ? _value.returnStartTime
          : returnStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      returnEndTime: null == returnEndTime
          ? _value.returnEndTime
          : returnEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductionCompanyCopyWith<$Res>? get productionCompany {
    if (_value.productionCompany == null) {
      return null;
    }

    return $ProductionCompanyCopyWith<$Res>(_value.productionCompany!, (value) {
      return _then(_value.copyWith(productionCompany: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarModelCopyWith<$Res> get model {
    return $CarModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
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

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
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
abstract class _$$_CarCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$_CarCopyWith(_$_Car value, $Res Function(_$_Car) then) =
      __$$_CarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String licensePlate,
      double price,
      double rented,
      String? description,
      List<ImageModel>? images,
      List<FeedbackModel>? feedBacks,
      List<CarFeature>? carFeatures,
      List<CarType>? carTypes,
      ProductionCompany? productionCompany,
      CarModel model,
      CarOwner? carOwner,
      Driver? driver,
      Location location,
      AdditionalCharge additionalCharge,
      double star,
      String status,
      @TimeOfDayConverter() TimeOfDay receiveStartTime,
      @TimeOfDayConverter() TimeOfDay receiveEndTime,
      @TimeOfDayConverter() TimeOfDay returnStartTime,
      @TimeOfDayConverter() TimeOfDay returnEndTime});

  @override
  $ProductionCompanyCopyWith<$Res>? get productionCompany;
  @override
  $CarModelCopyWith<$Res> get model;
  @override
  $CarOwnerCopyWith<$Res>? get carOwner;
  @override
  $DriverCopyWith<$Res>? get driver;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $AdditionalChargeCopyWith<$Res> get additionalCharge;
}

/// @nodoc
class __$$_CarCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$_Car>
    implements _$$_CarCopyWith<$Res> {
  __$$_CarCopyWithImpl(_$_Car _value, $Res Function(_$_Car) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? licensePlate = null,
    Object? price = null,
    Object? rented = null,
    Object? description = freezed,
    Object? images = freezed,
    Object? feedBacks = freezed,
    Object? carFeatures = freezed,
    Object? carTypes = freezed,
    Object? productionCompany = freezed,
    Object? model = null,
    Object? carOwner = freezed,
    Object? driver = freezed,
    Object? location = null,
    Object? additionalCharge = null,
    Object? star = null,
    Object? status = null,
    Object? receiveStartTime = null,
    Object? receiveEndTime = null,
    Object? returnStartTime = null,
    Object? returnEndTime = null,
  }) {
    return _then(_$_Car(
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rented: null == rented
          ? _value.rented
          : rented // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      feedBacks: freezed == feedBacks
          ? _value._feedBacks
          : feedBacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackModel>?,
      carFeatures: freezed == carFeatures
          ? _value._carFeatures
          : carFeatures // ignore: cast_nullable_to_non_nullable
              as List<CarFeature>?,
      carTypes: freezed == carTypes
          ? _value._carTypes
          : carTypes // ignore: cast_nullable_to_non_nullable
              as List<CarType>?,
      productionCompany: freezed == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as ProductionCompany?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CarModel,
      carOwner: freezed == carOwner
          ? _value.carOwner
          : carOwner // ignore: cast_nullable_to_non_nullable
              as CarOwner?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      additionalCharge: null == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as AdditionalCharge,
      star: null == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      receiveStartTime: null == receiveStartTime
          ? _value.receiveStartTime
          : receiveStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      receiveEndTime: null == receiveEndTime
          ? _value.receiveEndTime
          : receiveEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      returnStartTime: null == returnStartTime
          ? _value.returnStartTime
          : returnStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      returnEndTime: null == returnEndTime
          ? _value.returnEndTime
          : returnEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Car extends _Car {
  const _$_Car(
      {required this.id,
      this.name,
      required this.licensePlate,
      required this.price,
      required this.rented,
      this.description,
      final List<ImageModel>? images,
      final List<FeedbackModel>? feedBacks,
      final List<CarFeature>? carFeatures,
      final List<CarType>? carTypes,
      this.productionCompany,
      required this.model,
      this.carOwner,
      this.driver,
      required this.location,
      required this.additionalCharge,
      required this.star,
      required this.status,
      @TimeOfDayConverter() required this.receiveStartTime,
      @TimeOfDayConverter() required this.receiveEndTime,
      @TimeOfDayConverter() required this.returnStartTime,
      @TimeOfDayConverter() required this.returnEndTime})
      : _images = images,
        _feedBacks = feedBacks,
        _carFeatures = carFeatures,
        _carTypes = carTypes,
        super._();

  factory _$_Car.fromJson(Map<String, dynamic> json) => _$$_CarFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String licensePlate;
  @override
  final double price;
  @override
  final double rented;
  @override
  final String? description;
  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FeedbackModel>? _feedBacks;
  @override
  List<FeedbackModel>? get feedBacks {
    final value = _feedBacks;
    if (value == null) return null;
    if (_feedBacks is EqualUnmodifiableListView) return _feedBacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CarFeature>? _carFeatures;
  @override
  List<CarFeature>? get carFeatures {
    final value = _carFeatures;
    if (value == null) return null;
    if (_carFeatures is EqualUnmodifiableListView) return _carFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CarType>? _carTypes;
  @override
  List<CarType>? get carTypes {
    final value = _carTypes;
    if (value == null) return null;
    if (_carTypes is EqualUnmodifiableListView) return _carTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ProductionCompany? productionCompany;
  @override
  final CarModel model;
  @override
  final CarOwner? carOwner;
  @override
  final Driver? driver;
  @override
  final Location location;
  @override
  final AdditionalCharge additionalCharge;
  @override
  final double star;
  @override
  final String status;
  @override
  @TimeOfDayConverter()
  final TimeOfDay receiveStartTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay receiveEndTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay returnStartTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay returnEndTime;

  @override
  String toString() {
    return 'Car(id: $id, name: $name, licensePlate: $licensePlate, price: $price, rented: $rented, description: $description, images: $images, feedBacks: $feedBacks, carFeatures: $carFeatures, carTypes: $carTypes, productionCompany: $productionCompany, model: $model, carOwner: $carOwner, driver: $driver, location: $location, additionalCharge: $additionalCharge, star: $star, status: $status, receiveStartTime: $receiveStartTime, receiveEndTime: $receiveEndTime, returnStartTime: $returnStartTime, returnEndTime: $returnEndTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Car &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rented, rented) || other.rented == rented) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._feedBacks, _feedBacks) &&
            const DeepCollectionEquality()
                .equals(other._carFeatures, _carFeatures) &&
            const DeepCollectionEquality().equals(other._carTypes, _carTypes) &&
            (identical(other.productionCompany, productionCompany) ||
                other.productionCompany == productionCompany) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.carOwner, carOwner) ||
                other.carOwner == carOwner) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.additionalCharge, additionalCharge) ||
                other.additionalCharge == additionalCharge) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receiveStartTime, receiveStartTime) ||
                other.receiveStartTime == receiveStartTime) &&
            (identical(other.receiveEndTime, receiveEndTime) ||
                other.receiveEndTime == receiveEndTime) &&
            (identical(other.returnStartTime, returnStartTime) ||
                other.returnStartTime == returnStartTime) &&
            (identical(other.returnEndTime, returnEndTime) ||
                other.returnEndTime == returnEndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        licensePlate,
        price,
        rented,
        description,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_feedBacks),
        const DeepCollectionEquality().hash(_carFeatures),
        const DeepCollectionEquality().hash(_carTypes),
        productionCompany,
        model,
        carOwner,
        driver,
        location,
        additionalCharge,
        star,
        status,
        receiveStartTime,
        receiveEndTime,
        returnStartTime,
        returnEndTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarCopyWith<_$_Car> get copyWith =>
      __$$_CarCopyWithImpl<_$_Car>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarToJson(
      this,
    );
  }
}

abstract class _Car extends Car {
  const factory _Car(
      {required final String id,
      final String? name,
      required final String licensePlate,
      required final double price,
      required final double rented,
      final String? description,
      final List<ImageModel>? images,
      final List<FeedbackModel>? feedBacks,
      final List<CarFeature>? carFeatures,
      final List<CarType>? carTypes,
      final ProductionCompany? productionCompany,
      required final CarModel model,
      final CarOwner? carOwner,
      final Driver? driver,
      required final Location location,
      required final AdditionalCharge additionalCharge,
      required final double star,
      required final String status,
      @TimeOfDayConverter() required final TimeOfDay receiveStartTime,
      @TimeOfDayConverter() required final TimeOfDay receiveEndTime,
      @TimeOfDayConverter() required final TimeOfDay returnStartTime,
      @TimeOfDayConverter() required final TimeOfDay returnEndTime}) = _$_Car;
  const _Car._() : super._();

  factory _Car.fromJson(Map<String, dynamic> json) = _$_Car.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String get licensePlate;
  @override
  double get price;
  @override
  double get rented;
  @override
  String? get description;
  @override
  List<ImageModel>? get images;
  @override
  List<FeedbackModel>? get feedBacks;
  @override
  List<CarFeature>? get carFeatures;
  @override
  List<CarType>? get carTypes;
  @override
  ProductionCompany? get productionCompany;
  @override
  CarModel get model;
  @override
  CarOwner? get carOwner;
  @override
  Driver? get driver;
  @override
  Location get location;
  @override
  AdditionalCharge get additionalCharge;
  @override
  double get star;
  @override
  String get status;
  @override
  @TimeOfDayConverter()
  TimeOfDay get receiveStartTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay get receiveEndTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay get returnStartTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay get returnEndTime;
  @override
  @JsonKey(ignore: true)
  _$$_CarCopyWith<_$_Car> get copyWith => throw _privateConstructorUsedError;
}
