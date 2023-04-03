// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetail _$$_OrderDetailFromJson(Map<String, dynamic> json) =>
    _$_OrderDetail(
      id: json['id'] as String,
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      deliveryLocation: json['deliveryLocation'] == null
          ? null
          : Location.fromJson(json['deliveryLocation'] as Map<String, dynamic>),
      pickUpLocation: json['pickUpLocation'] == null
          ? null
          : Location.fromJson(json['pickUpLocation'] as Map<String, dynamic>),
      deliveryTime: DateTime.parse(json['deliveryTime'] as String),
      pickUpTime: DateTime.parse(json['pickUpTime'] as String),
      driver: json['driver'] == null
          ? null
          : Driver.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderDetailToJson(_$_OrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'car': instance.car,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'deliveryLocation': instance.deliveryLocation,
      'pickUpLocation': instance.pickUpLocation,
      'deliveryTime': instance.deliveryTime.toIso8601String(),
      'pickUpTime': instance.pickUpTime.toIso8601String(),
      'driver': instance.driver,
    };
