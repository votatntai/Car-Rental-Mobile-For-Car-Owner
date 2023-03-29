// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackModel _$$_FeedbackModelFromJson(Map<String, dynamic> json) =>
    _$_FeedbackModel(
      id: json['id'] as String,
      orderId: json['orderId'] as String,
      customerId: (json['customerId'] as num).toDouble(),
      start: json['start'] as int,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_FeedbackModelToJson(_$_FeedbackModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'customerId': instance.customerId,
      'start': instance.start,
      'content': instance.content,
    };
