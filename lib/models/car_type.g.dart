// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarType _$$_CarTypeFromJson(Map<String, dynamic> json) => _$_CarType(
      type: TypeModel.fromJson(json['type'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_CarTypeToJson(_$_CarType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
    };
