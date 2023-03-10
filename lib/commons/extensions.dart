import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:dio/dio.dart';

extension ApiErrorX on DioError {
  ApiResponse<T> getErrorMessage<T>() {
    return ApiResponse.error(error: toString());
  }
}
