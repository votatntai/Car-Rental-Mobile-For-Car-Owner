// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_charge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdditionalCharge _$$_AdditionalChargeFromJson(Map<String, dynamic> json) =>
    _$_AdditionalCharge(
      id: json['id'] as String,
      maximumDistance: json['maximumDistance'] as int,
      distanceSurcharge: (json['distanceSurcharge'] as num).toDouble(),
      timeSurcharge: (json['timeSurcharge'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AdditionalChargeToJson(_$_AdditionalCharge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maximumDistance': instance.maximumDistance,
      'distanceSurcharge': instance.distanceSurcharge,
      'timeSurcharge': instance.timeSurcharge,
    };
