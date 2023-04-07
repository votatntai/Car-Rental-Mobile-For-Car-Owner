// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_charge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdditionalChargeModel _$$_AdditionalChargeModelFromJson(
        Map<String, dynamic> json) =>
    _$_AdditionalChargeModel(
      maximumDistance: json['maximumDistance'] as int,
      distanceSurcharge: (json['distanceSurcharge'] as num).toDouble(),
      timeSurcharge: (json['timeSurcharge'] as num).toDouble(),
      additionalDistance: (json['additionalDistance'] as num).toDouble(),
      additionalTime: (json['additionalTime'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AdditionalChargeModelToJson(
        _$_AdditionalChargeModel instance) =>
    <String, dynamic>{
      'maximumDistance': instance.maximumDistance,
      'distanceSurcharge': instance.distanceSurcharge,
      'timeSurcharge': instance.timeSurcharge,
      'additionalDistance': instance.additionalDistance,
      'additionalTime': instance.additionalTime,
    };
