import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car_registration.dart';
import 'package:car_rental_for_car_owner/models/pagination.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/models/car_registration_model.dart';
import 'package:dio/dio.dart';

class CarRegistrationRepository {
  final Dio dio;

  CarRegistrationRepository({
    required this.dio,
  });

  // create car registration
  Future<String?> createCarRegistration(
    CarRegistrationModel carRegistrationModel,
  ) async {
    try {
      final result = await dio.post<JsonObject>(
        'car-registrations',
        data: carRegistrationModel,
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        return null;
      }

      return 'Lỗi không xác định';
    } on DioError catch (e) {
      return e.toString();
    }
  }

  Future<ApiResponse<List<CarRegistration>>> myCarRegistrations({
    required String carOwnerId,
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
        'car-registrations',
        queryParameters: {
          'pageNumber': pageNumber - 1,
          'pageSize': pageSize,
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final paginationResult = PaginationResult<CarRegistration>.fromJson(
          result.data!,
          (json) => CarRegistration.fromJson(json as JsonObject),
        );

        List<CarRegistration> list = paginationResult.data
            .where((element) => element.carOwner.id == carOwnerId)
            .toList();

        list.sort((a, b) => b.createAt.compareTo(a.createAt));

        return ApiSuccess(list);
      }

      return const ApiSuccess(
        [],
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
