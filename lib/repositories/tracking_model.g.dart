// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackingModel _$$_TrackingModelFromJson(Map<String, dynamic> json) =>
    _$_TrackingModel(
      latitude: (json['Latitude'] as num).toDouble(),
      longitude: (json['Longitude'] as num).toDouble(),
      carId: json['CarId'] as String,
    );

Map<String, dynamic> _$$_TrackingModelToJson(_$_TrackingModel instance) =>
    <String, dynamic>{
      'Latitude': instance.latitude,
      'Longitude': instance.longitude,
      'CarId': instance.carId,
    };
