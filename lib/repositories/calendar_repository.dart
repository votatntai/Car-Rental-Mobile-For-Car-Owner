import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/calendar.dart';
import 'package:car_rental_for_car_owner/models/enums/weekday.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CalendarRepository {
  CalendarRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<List<Calendar>>> carCalendar({
    required String carId,
  }) async {
    try {
      final calendarResult = await dio.get<dynamic>(
        '/cars/calendars/$carId',
      );

      if (calendarResult.data != null &&
          calendarResult.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          (calendarResult.data as List<dynamic>)
              .map((e) => Calendar.fromJson(e['calendar'] as JsonObject))
              .toList(),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
