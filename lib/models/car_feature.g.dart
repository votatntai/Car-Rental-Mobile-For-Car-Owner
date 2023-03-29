// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarFeature _$$_CarFeatureFromJson(Map<String, dynamic> json) =>
    _$_CarFeature(
      description: json['description'] as String?,
      feature: Feature.fromJson(json['feature'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CarFeatureToJson(_$_CarFeature instance) =>
    <String, dynamic>{
      'description': instance.description,
      'feature': instance.feature,
    };
