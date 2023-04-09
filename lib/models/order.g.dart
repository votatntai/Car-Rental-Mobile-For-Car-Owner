// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as String,
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      orderDetails: (json['orderDetails'] as List<dynamic>)
          .map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      rentalTime: json['rentalTime'] as int,
      amount: (json['amount'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
      deliveryDistance: (json['deliveryDistance'] as num).toDouble(),
      deposit: (json['deposit'] as num).toDouble(),
      isPaid: json['isPaid'] as bool,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      description: json['description'] as String?,
      createAt: DateTime.parse(json['createAt'] as String),
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'orderDetails': instance.orderDetails,
      'rentalTime': instance.rentalTime,
      'amount': instance.amount,
      'unitPrice': instance.unitPrice,
      'deliveryFee': instance.deliveryFee,
      'deliveryDistance': instance.deliveryDistance,
      'deposit': instance.deposit,
      'isPaid': instance.isPaid,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'description': instance.description,
      'createAt': instance.createAt.toIso8601String(),
      'promotion': instance.promotion,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.canceled: 'Canceled',
  OrderStatus.pending: 'Pending',
  OrderStatus.managerConfirmed: 'ManagerConfirmed',
  OrderStatus.carOwnerApproved: 'CarOwnerApproved',
  OrderStatus.paid: 'Paid',
  OrderStatus.receivedTheCar: 'ReceivedTheCar',
  OrderStatus.arrivedAtPickUpPoint: 'ArrivedAtPickUpPoint',
  OrderStatus.receivedGuests: 'ReceivedGuests',
  OrderStatus.ongoing: 'Ongoing',
  OrderStatus.returnedTheCar: 'ReturnedTheCar',
  OrderStatus.finished: 'Finished',
};
