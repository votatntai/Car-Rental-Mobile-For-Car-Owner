part of 'car_calendar_bloc.dart';

@freezed
class CarCalendarEvent with _$CarCalendarEvent {
  const factory CarCalendarEvent.started({
    String? carId,
  }) = _Started;

  const factory CarCalendarEvent.updateCalendar({
    required Calendar calendar,
  }) = _UpdateCalendar;
}
