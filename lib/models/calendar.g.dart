// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Calendar _$$_CalendarFromJson(Map<String, dynamic> json) => _$_Calendar(
      id: json['id'] as String,
      weekday: weekdayFromJson(json['weekday'] as String),
      startTime:
          const TimeOfDayConverter().fromJson(json['startTime'] as String),
      endTime: const TimeOfDayConverter().fromJson(json['endTime'] as String),
    );

Map<String, dynamic> _$$_CalendarToJson(_$_Calendar instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekday': _$WeekdayEnumMap[instance.weekday]!,
      'startTime': const TimeOfDayConverter().toJson(instance.startTime),
      'endTime': const TimeOfDayConverter().toJson(instance.endTime),
    };

const _$WeekdayEnumMap = {
  Weekday.monday: 'monday',
  Weekday.tuesday: 'tuesday',
  Weekday.wednesday: 'wednesday',
  Weekday.thursday: 'thursday',
  Weekday.friday: 'friday',
  Weekday.saturday: 'saturday',
  Weekday.sunday: 'sunday',
};
