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

extension StringValidatorX on String {
  bool get isNumber {
    final RegExp regex = RegExp(r'^\d+(\.\d+)?$');
    return regex.hasMatch(this);
  }

  bool get isPhoneNumber {
    final RegExp regex = RegExp(r'^(84|0[3|5|7|8|9])+([0-9]{8})\b');
    return regex.hasMatch(this);
  }

  bool get isSignedNumber {
    final RegExp regex = RegExp(r'^[+]?\d+$');
    return regex.hasMatch(this);
  }

  bool get isCarLicensePlate {
    final RegExp regex = RegExp(r'^[0-9]{2}[A-Z][\-][0-9]{3}[\.][0-9]{2}$');
    return regex.hasMatch(this);
  }
}
