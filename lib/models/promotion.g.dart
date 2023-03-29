// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Promotion _$$_PromotionFromJson(Map<String, dynamic> json) => _$_Promotion(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      discount: (json['discount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PromotionToJson(_$_Promotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'discount': instance.discount,
    };
