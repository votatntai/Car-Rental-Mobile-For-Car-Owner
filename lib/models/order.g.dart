// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as String,
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      orderDetail: json['orderDetail'] == null
          ? null
          : OrderDetail.fromJson(json['orderDetail'] as Map<String, dynamic>),
      rentalTime: DateTime.parse(json['rentalTime'] as String),
      amount: (json['amount'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
      deposit: (json['deposit'] as num).toDouble(),
      isPaid: json['isPaid'] as bool,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'orderDetail': instance.orderDetail,
      'rentalTime': instance.rentalTime.toIso8601String(),
      'amount': instance.amount,
      'unitPrice': instance.unitPrice,
      'deliveryFee': instance.deliveryFee,
      'deposit': instance.deposit,
      'isPaid': instance.isPaid,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'promotion': instance.promotion,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.accepted: 'accepted',
  OrderStatus.rejected: 'rejected',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.started: 'started',
  OrderStatus.finished: 'finished',
};
