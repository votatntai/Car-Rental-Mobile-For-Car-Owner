import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

extension ApiErrorX on DioError {
  ApiResponse<T> getErrorMessage<T>() {
    return ApiResponse.error(error: toString());
  }
}

extension CompareToX on TimeOfDay {
  bool isAfter(TimeOfDay other) {
    return hour > other.hour || (hour == other.hour && minute > other.minute);
  }

  bool isBefore(TimeOfDay other) {
    return hour < other.hour || (hour == other.hour && minute < other.minute);
  }

  bool isSame(TimeOfDay other) {
    return hour == other.hour && minute == other.minute;
  }
}
