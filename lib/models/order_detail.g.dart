// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetail _$$_OrderDetailFromJson(Map<String, dynamic> json) =>
    _$_OrderDetail(
      id: json['id'] as String,
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      deliveryLocation: json['deliveryLocation'] == null
          ? null
          : Location.fromJson(json['deliveryLocation'] as Map<String, dynamic>),
      pickupLocation: json['pickupLocation'] == null
          ? null
          : Location.fromJson(json['pickupLocation'] as Map<String, dynamic>),
      deliveryTime: DateTime.parse(json['deliveryTime'] as String),
      pickupTime: DateTime.parse(json['pickupTime'] as String),
      driver: json['driver'] == null
          ? null
          : Driver.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderDetailToJson(_$_OrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'car': instance.car,
      'deliveryLocation': instance.deliveryLocation,
      'pickupLocation': instance.pickupLocation,
      'deliveryTime': instance.deliveryTime.toIso8601String(),
      'pickupTime': instance.pickupTime.toIso8601String(),
      'driver': instance.driver,
    };
