// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackModel _$$_FeedbackModelFromJson(Map<String, dynamic> json) =>
    _$_FeedbackModel(
      id: json['id'] as String,
      orderId: json['orderId'] as String?,
      customerId: json['customerId'] as String?,
      driverId: json['driverId'] as String?,
      carId: json['carId'] as String?,
      star: json['star'] as int?,
      content: json['content'] as String?,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_FeedbackModelToJson(_$_FeedbackModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'customerId': instance.customerId,
      'driverId': instance.driverId,
      'carId': instance.carId,
      'star': instance.star,
      'content': instance.content,
      'createAt': instance.createAt.toIso8601String(),
    };
