// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateCarModel _$$_UpdateCarModelFromJson(Map<String, dynamic> json) =>
    _$_UpdateCarModel(
      carCalendars: (json['carCalendars'] as List<dynamic>?)
          ?.map((e) => CarCalendar.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_UpdateCarModelToJson(_$_UpdateCarModel instance) =>
    <String, dynamic>{
      'carCalendars': instance.carCalendars,
      'status': instance.status,
    };
