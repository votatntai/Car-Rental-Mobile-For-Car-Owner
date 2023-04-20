import 'package:car_rental_for_car_owner/models/calendar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_calendar.freezed.dart';
part 'car_calendar.g.dart';

@freezed
class CarCalendar with _$CarCalendar {
  factory CarCalendar({
    String? description,
    Calendar? calendar,
  }) = _CarCalendar;

  factory CarCalendar.fromJson(Map<String, dynamic> json) =>
      _$CarCalendarFromJson(json);
}
