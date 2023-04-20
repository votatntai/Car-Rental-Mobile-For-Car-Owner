// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarCalendar _$$_CarCalendarFromJson(Map<String, dynamic> json) =>
    _$_CarCalendar(
      description: json['description'] as String?,
      calendar: json['calendar'] == null
          ? null
          : Calendar.fromJson(json['calendar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CarCalendarToJson(_$_CarCalendar instance) =>
    <String, dynamic>{
      'description': instance.description,
      'calendar': instance.calendar,
    };
