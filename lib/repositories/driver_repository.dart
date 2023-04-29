import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:dio/dio.dart';

class DriverRepository {
  //copy form CarOwnerRepository

  DriverRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<Driver>> driverById(String id) async {
    try {
      final result = await dio.get<JsonObject>(
        'drivers/$id',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Driver.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<Driver?> driver(String id) async {
    try {
      final result = await dio.get<JsonObject>(
        'drivers/$id',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return Driver.fromJson(result.data!);
      }

      return null;
    } on DioError catch (e) {
      return null;
    }
  }
}
