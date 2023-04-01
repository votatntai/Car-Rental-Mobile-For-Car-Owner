import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/calendar.dart';
import 'package:car_rental_for_car_owner/models/enums/weekday.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final mockCalendars = [
  Calendar(
    id: '1',
    weekDay: Weekday.monday,
    startTime: const TimeOfDay(
      hour: 6,
      minute: 30,
    ),
    endTime: const TimeOfDay(
      hour: 22,
      minute: 30,
    ),
  ),
  Calendar(
    id: '2',
    weekDay: Weekday.tuesday,
    startTime: const TimeOfDay(
      hour: 6,
      minute: 00,
    ),
    endTime: const TimeOfDay(
      hour: 22,
      minute: 30,
    ),
  ),
  Calendar(
    id: '3',
    weekDay: Weekday.wednesday,
    startTime: const TimeOfDay(
      hour: 8,
      minute: 00,
    ),
    endTime: const TimeOfDay(
      hour: 19,
      minute: 30,
    ),
  ),
  Calendar(
    id: '4',
    weekDay: Weekday.thursday,
    startTime: const TimeOfDay(
      hour: 10,
      minute: 00,
    ),
    endTime: const TimeOfDay(
      hour: 22,
      minute: 30,
    ),
  ),
  Calendar(
    id: '5',
    weekDay: Weekday.saturday,
    startTime: const TimeOfDay(
      hour: 6,
      minute: 00,
    ),
    endTime: const TimeOfDay(
      hour: 20,
      minute: 30,
    ),
  ),
  // Calendar(
  //   id: '6',
  //   weekDay: Weekday.sunday,
  //   startTime: const TimeOfDay(
  //     hour: 10,
  //     minute: 00,
  //   ),
  //   endTime: const TimeOfDay(
  //     hour: 20,
  //     minute: 30,
  //   ),
  // ),
];

class CalendarRepository {
  CalendarRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<List<Calendar>>> carCalendar({
    required String carId,
  }) async {
    try {
      return ApiResponse.success(mockCalendars);
      // return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
