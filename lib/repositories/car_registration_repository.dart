import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
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
}
