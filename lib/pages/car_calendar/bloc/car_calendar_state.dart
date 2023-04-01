part of 'car_calendar_bloc.dart';

@freezed
class CarCalendarState with _$CarCalendarState {
  const factory CarCalendarState.initial() = _Initial;
  const factory CarCalendarState.loading() = _Loading;
  const factory CarCalendarState.success({
    required List<Calendar> calendars,
  }) = _Success;
  const factory CarCalendarState.failure({
    required String message,
  }) = _Failure;
}
