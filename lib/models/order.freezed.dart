// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  List<OrderDetail> get orderDetails => throw _privateConstructorUsedError;
  int get rentalTime => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get deliveryFee => throw _privateConstructorUsedError;
  double get deliveryDistance => throw _privateConstructorUsedError;
  double get deposit => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  Promotion? get promotion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      Customer customer,
      List<OrderDetail> orderDetails,
      int rentalTime,
      double amount,
      double unitPrice,
      double deliveryFee,
      double deliveryDistance,
      double deposit,
      bool isPaid,
      OrderStatus status,
      String? description,
      DateTime? createAt,
      Promotion? promotion});

  $CustomerCopyWith<$Res> get customer;
  $PromotionCopyWith<$Res>? get promotion;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? orderDetails = null,
    Object? rentalTime = null,
    Object? amount = null,
    Object? unitPrice = null,
    Object? deliveryFee = null,
    Object? deliveryDistance = null,
    Object? deposit = null,
    Object? isPaid = null,
    Object? status = null,
    Object? description = freezed,
    Object? createAt = freezed,
    Object? promotion = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>,
      rentalTime: null == rentalTime
          ? _value.rentalTime
          : rentalTime // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryDistance: null == deliveryDistance
          ? _value.deliveryDistance
          : deliveryDistance // ignore: cast_nullable_to_non_nullable
              as double,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promotion?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PromotionCopyWith<$Res>? get promotion {
    if (_value.promotion == null) {
      return null;
    }

    return $PromotionCopyWith<$Res>(_value.promotion!, (value) {
      return _then(_value.copyWith(promotion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Customer customer,
      List<OrderDetail> orderDetails,
      int rentalTime,
      double amount,
      double unitPrice,
      double deliveryFee,
      double deliveryDistance,
      double deposit,
      bool isPaid,
      OrderStatus status,
      String? description,
      DateTime? createAt,
      Promotion? promotion});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $PromotionCopyWith<$Res>? get promotion;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? orderDetails = null,
    Object? rentalTime = null,
    Object? amount = null,
    Object? unitPrice = null,
    Object? deliveryFee = null,
    Object? deliveryDistance = null,
    Object? deposit = null,
    Object? isPaid = null,
    Object? status = null,
    Object? description = freezed,
    Object? createAt = freezed,
    Object? promotion = freezed,
  }) {
    return _then(_$_Order(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      orderDetails: null == orderDetails
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>,
      rentalTime: null == rentalTime
          ? _value.rentalTime
          : rentalTime // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryDistance: null == deliveryDistance
          ? _value.deliveryDistance
          : deliveryDistance // ignore: cast_nullable_to_non_nullable
              as double,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promotion?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order(
      {required this.id,
      required this.customer,
      required final List<OrderDetail> orderDetails,
      required this.rentalTime,
      required this.amount,
      required this.unitPrice,
      required this.deliveryFee,
      required this.deliveryDistance,
      required this.deposit,
      required this.isPaid,
      required this.status,
      this.description,
      this.createAt,
      this.promotion})
      : _orderDetails = orderDetails;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String id;
  @override
  final Customer customer;
  final List<OrderDetail> _orderDetails;
  @override
  List<OrderDetail> get orderDetails {
    if (_orderDetails is EqualUnmodifiableListView) return _orderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDetails);
  }

  @override
  final int rentalTime;
  @override
  final double amount;
  @override
  final double unitPrice;
  @override
  final double deliveryFee;
  @override
  final double deliveryDistance;
  @override
  final double deposit;
  @override
  final bool isPaid;
  @override
  final OrderStatus status;
  @override
  final String? description;
  @override
  final DateTime? createAt;
  @override
  final Promotion? promotion;

  @override
  String toString() {
    return 'Order(id: $id, customer: $customer, orderDetails: $orderDetails, rentalTime: $rentalTime, amount: $amount, unitPrice: $unitPrice, deliveryFee: $deliveryFee, deliveryDistance: $deliveryDistance, deposit: $deposit, isPaid: $isPaid, status: $status, description: $description, createAt: $createAt, promotion: $promotion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails) &&
            (identical(other.rentalTime, rentalTime) ||
                other.rentalTime == rentalTime) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.deliveryDistance, deliveryDistance) ||
                other.deliveryDistance == deliveryDistance) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customer,
      const DeepCollectionEquality().hash(_orderDetails),
      rentalTime,
      amount,
      unitPrice,
      deliveryFee,
      deliveryDistance,
      deposit,
      isPaid,
      status,
      description,
      createAt,
      promotion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {required final String id,
      required final Customer customer,
      required final List<OrderDetail> orderDetails,
      required final int rentalTime,
      required final double amount,
      required final double unitPrice,
      required final double deliveryFee,
      required final double deliveryDistance,
      required final double deposit,
      required final bool isPaid,
      required final OrderStatus status,
      final String? description,
      final DateTime? createAt,
      final Promotion? promotion}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String get id;
  @override
  Customer get customer;
  @override
  List<OrderDetail> get orderDetails;
  @override
  int get rentalTime;
  @override
  double get amount;
  @override
  double get unitPrice;
  @override
  double get deliveryFee;
  @override
  double get deliveryDistance;
  @override
  double get deposit;
  @override
  bool get isPaid;
  @override
  OrderStatus get status;
  @override
  String? get description;
  @override
  DateTime? get createAt;
  @override
  Promotion? get promotion;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
