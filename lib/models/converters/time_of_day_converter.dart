import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class TimeOfDayConverter extends JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String json) {
    final times = json.split(':');
    return TimeOfDay(hour: int.parse(times[0]), minute: int.parse(times[1]));
  }

  @override
  String toJson(TimeOfDay object) {
    return '${NumberFormat('00').format(object.hour)}:${NumberFormat('00').format(object.minute)}:00}';
  }
}
