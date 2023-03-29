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
  OrderDetail? get orderDetail => throw _privateConstructorUsedError;
  DateTime get rentalTime => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  Promotion? get promotion => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  double get rentalUnitPrice => throw _privateConstructorUsedError;
  double get deliveryCost => throw _privateConstructorUsedError;
  double get deposit => throw _privateConstructorUsedError;

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
      OrderDetail? orderDetail,
      DateTime rentalTime,
      double amount,
      bool isPaid,
      OrderStatus status,
      String? description,
      DateTime createdAt,
      Promotion? promotion,
      DateTime startTime,
      DateTime endTime,
      double rentalUnitPrice,
      double deliveryCost,
      double deposit});

  $CustomerCopyWith<$Res> get customer;
  $OrderDetailCopyWith<$Res>? get orderDetail;
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
    Object? orderDetail = freezed,
    Object? rentalTime = null,
    Object? amount = null,
    Object? isPaid = null,
    Object? status = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? promotion = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? rentalUnitPrice = null,
    Object? deliveryCost = null,
    Object? deposit = null,
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
      orderDetail: freezed == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetail?,
      rentalTime: null == rentalTime
          ? _value.rentalTime
          : rentalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promotion?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rentalUnitPrice: null == rentalUnitPrice
          ? _value.rentalUnitPrice
          : rentalUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCost: null == deliveryCost
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
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
  $OrderDetailCopyWith<$Res>? get orderDetail {
    if (_value.orderDetail == null) {
      return null;
    }

    return $OrderDetailCopyWith<$Res>(_value.orderDetail!, (value) {
      return _then(_value.copyWith(orderDetail: value) as $Val);
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
      OrderDetail? orderDetail,
      DateTime rentalTime,
      double amount,
      bool isPaid,
      OrderStatus status,
      String? description,
      DateTime createdAt,
      Promotion? promotion,
      DateTime startTime,
      DateTime endTime,
      double rentalUnitPrice,
      double deliveryCost,
      double deposit});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $OrderDetailCopyWith<$Res>? get orderDetail;
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
    Object? orderDetail = freezed,
    Object? rentalTime = null,
    Object? amount = null,
    Object? isPaid = null,
    Object? status = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? promotion = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? rentalUnitPrice = null,
    Object? deliveryCost = null,
    Object? deposit = null,
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
      orderDetail: freezed == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetail?,
      rentalTime: null == rentalTime
          ? _value.rentalTime
          : rentalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promotion?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rentalUnitPrice: null == rentalUnitPrice
          ? _value.rentalUnitPrice
          : rentalUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCost: null == deliveryCost
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order(
      {required this.id,
      required this.customer,
      this.orderDetail,
      required this.rentalTime,
      required this.amount,
      required this.isPaid,
      required this.status,
      this.description,
      required this.createdAt,
      this.promotion,
      required this.startTime,
      required this.endTime,
      required this.rentalUnitPrice,
      required this.deliveryCost,
      required this.deposit});

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String id;
  @override
  final Customer customer;
  @override
  final OrderDetail? orderDetail;
  @override
  final DateTime rentalTime;
  @override
  final double amount;
  @override
  final bool isPaid;
  @override
  final OrderStatus status;
  @override
  final String? description;
  @override
  final DateTime createdAt;
  @override
  final Promotion? promotion;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final double rentalUnitPrice;
  @override
  final double deliveryCost;
  @override
  final double deposit;

  @override
  String toString() {
    return 'Order(id: $id, customer: $customer, orderDetail: $orderDetail, rentalTime: $rentalTime, amount: $amount, isPaid: $isPaid, status: $status, description: $description, createdAt: $createdAt, promotion: $promotion, startTime: $startTime, endTime: $endTime, rentalUnitPrice: $rentalUnitPrice, deliveryCost: $deliveryCost, deposit: $deposit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.orderDetail, orderDetail) ||
                other.orderDetail == orderDetail) &&
            (identical(other.rentalTime, rentalTime) ||
                other.rentalTime == rentalTime) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.rentalUnitPrice, rentalUnitPrice) ||
                other.rentalUnitPrice == rentalUnitPrice) &&
            (identical(other.deliveryCost, deliveryCost) ||
                other.deliveryCost == deliveryCost) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customer,
      orderDetail,
      rentalTime,
      amount,
      isPaid,
      status,
      description,
      createdAt,
      promotion,
      startTime,
      endTime,
      rentalUnitPrice,
      deliveryCost,
      deposit);

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
      final OrderDetail? orderDetail,
      required final DateTime rentalTime,
      required final double amount,
      required final bool isPaid,
      required final OrderStatus status,
      final String? description,
      required final DateTime createdAt,
      final Promotion? promotion,
      required final DateTime startTime,
      required final DateTime endTime,
      required final double rentalUnitPrice,
      required final double deliveryCost,
      required final double deposit}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String get id;
  @override
  Customer get customer;
  @override
  OrderDetail? get orderDetail;
  @override
  DateTime get rentalTime;
  @override
  double get amount;
  @override
  bool get isPaid;
  @override
  OrderStatus get status;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  Promotion? get promotion;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  double get rentalUnitPrice;
  @override
  double get deliveryCost;
  @override
  double get deposit;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
