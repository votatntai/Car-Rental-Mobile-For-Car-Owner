// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      id: json['id'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
