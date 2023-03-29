// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      placeId: json['place_id'] as String,
      formattedAddress: json['formatted_address'] as String,
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'place_id': instance.placeId,
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry,
    };
