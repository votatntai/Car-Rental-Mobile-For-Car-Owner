import 'package:car_rental_for_car_owner/models/converters/time_of_day_converter.dart';
import 'package:car_rental_for_car_owner/models/enums/weekday.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar.freezed.dart';
part 'calendar.g.dart';

@freezed
class Calendar with _$Calendar {
  factory Calendar({
    required String id,
    @JsonKey(fromJson: weekdayFromJson) required Weekday weekday,
    @TimeOfDayConverter() required TimeOfDay startTime,
    @TimeOfDayConverter() required TimeOfDay endTime,
  }) = _Calendar;

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);
}
