import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:dio/dio.dart';

class UserRepository {
  UserRepository({
    required this.dio,
  });

  final Dio dio;

  Future<Driver?> getDriver() async {
    // if (user != null) return user;
    try {
      final result = await dio.get<Map<String, dynamic>>('auth/drivers');

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final data = Driver.fromJson(result.data!);
        return data;
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}
