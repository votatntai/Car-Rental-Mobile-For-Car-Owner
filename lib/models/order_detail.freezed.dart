// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) {
  return _OrderDetail.fromJson(json);
}

/// @nodoc
mixin _$OrderDetail {
  String get id => throw _privateConstructorUsedError;
  Car get car => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  Location? get deliveryLocation => throw _privateConstructorUsedError;
  Location? get pickUpLocation => throw _privateConstructorUsedError;
  DateTime get deliveryTime => throw _privateConstructorUsedError;
  DateTime get pickUpTime => throw _privateConstructorUsedError;
  Driver? get driver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailCopyWith<OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailCopyWith<$Res> {
  factory $OrderDetailCopyWith(
          OrderDetail value, $Res Function(OrderDetail) then) =
      _$OrderDetailCopyWithImpl<$Res, OrderDetail>;
  @useResult
  $Res call(
      {String id,
      Car car,
      DateTime startTime,
      DateTime endTime,
      Location? deliveryLocation,
      Location? pickUpLocation,
      DateTime deliveryTime,
      DateTime pickUpTime,
      Driver? driver});

  $CarCopyWith<$Res> get car;
  $LocationCopyWith<$Res>? get deliveryLocation;
  $LocationCopyWith<$Res>? get pickUpLocation;
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class _$OrderDetailCopyWithImpl<$Res, $Val extends OrderDetail>
    implements $OrderDetailCopyWith<$Res> {
  _$OrderDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? car = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? deliveryLocation = freezed,
    Object? pickUpLocation = freezed,
    Object? deliveryTime = null,
    Object? pickUpTime = null,
    Object? driver = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      pickUpLocation: freezed == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickUpTime: null == pickUpTime
          ? _value.pickUpTime
          : pickUpTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get deliveryLocation {
    if (_value.deliveryLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.deliveryLocation!, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get pickUpLocation {
    if (_value.pickUpLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.pickUpLocation!, (value) {
      return _then(_value.copyWith(pickUpLocation: value) as $Val);
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
}

/// @nodoc
abstract class _$$_OrderDetailCopyWith<$Res>
    implements $OrderDetailCopyWith<$Res> {
  factory _$$_OrderDetailCopyWith(
          _$_OrderDetail value, $Res Function(_$_OrderDetail) then) =
      __$$_OrderDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Car car,
      DateTime startTime,
      DateTime endTime,
      Location? deliveryLocation,
      Location? pickUpLocation,
      DateTime deliveryTime,
      DateTime pickUpTime,
      Driver? driver});

  @override
  $CarCopyWith<$Res> get car;
  @override
  $LocationCopyWith<$Res>? get deliveryLocation;
  @override
  $LocationCopyWith<$Res>? get pickUpLocation;
  @override
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class __$$_OrderDetailCopyWithImpl<$Res>
    extends _$OrderDetailCopyWithImpl<$Res, _$_OrderDetail>
    implements _$$_OrderDetailCopyWith<$Res> {
  __$$_OrderDetailCopyWithImpl(
      _$_OrderDetail _value, $Res Function(_$_OrderDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? car = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? deliveryLocation = freezed,
    Object? pickUpLocation = freezed,
    Object? deliveryTime = null,
    Object? pickUpTime = null,
    Object? driver = freezed,
  }) {
    return _then(_$_OrderDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      pickUpLocation: freezed == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickUpTime: null == pickUpTime
          ? _value.pickUpTime
          : pickUpTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetail implements _OrderDetail {
  _$_OrderDetail(
      {required this.id,
      required this.car,
      required this.startTime,
      required this.endTime,
      this.deliveryLocation,
      this.pickUpLocation,
      required this.deliveryTime,
      required this.pickUpTime,
      this.driver});

  factory _$_OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailFromJson(json);

  @override
  final String id;
  @override
  final Car car;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final Location? deliveryLocation;
  @override
  final Location? pickUpLocation;
  @override
  final DateTime deliveryTime;
  @override
  final DateTime pickUpTime;
  @override
  final Driver? driver;

  @override
  String toString() {
    return 'OrderDetail(id: $id, car: $car, startTime: $startTime, endTime: $endTime, deliveryLocation: $deliveryLocation, pickUpLocation: $pickUpLocation, deliveryTime: $deliveryTime, pickUpTime: $pickUpTime, driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.pickUpLocation, pickUpLocation) ||
                other.pickUpLocation == pickUpLocation) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.pickUpTime, pickUpTime) ||
                other.pickUpTime == pickUpTime) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, car, startTime, endTime,
      deliveryLocation, pickUpLocation, deliveryTime, pickUpTime, driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailCopyWith<_$_OrderDetail> get copyWith =>
      __$$_OrderDetailCopyWithImpl<_$_OrderDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailToJson(
      this,
    );
  }
}

abstract class _OrderDetail implements OrderDetail {
  factory _OrderDetail(
      {required final String id,
      required final Car car,
      required final DateTime startTime,
      required final DateTime endTime,
      final Location? deliveryLocation,
      final Location? pickUpLocation,
      required final DateTime deliveryTime,
      required final DateTime pickUpTime,
      final Driver? driver}) = _$_OrderDetail;

  factory _OrderDetail.fromJson(Map<String, dynamic> json) =
      _$_OrderDetail.fromJson;

  @override
  String get id;
  @override
  Car get car;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  Location? get deliveryLocation;
  @override
  Location? get pickUpLocation;
  @override
  DateTime get deliveryTime;
  @override
  DateTime get pickUpTime;
  @override
  Driver? get driver;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailCopyWith<_$_OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
