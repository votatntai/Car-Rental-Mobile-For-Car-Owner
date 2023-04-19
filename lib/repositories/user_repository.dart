import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:car_rental_for_car_owner/models/enums/gender.dart';
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

  // get car owner
  Future<CarOwner?> getCarOwner() async {
    // if (user != null) return user;
    try {
      final result = await dio.get<Map<String, dynamic>>('auth/car-owners');

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final data = CarOwner.fromJson(result.data!);
        return data;
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  Future<CarOwner?> updateCarOwner({
    required String id,
    bool? isAutoAcceptOrder,
    String? name,
    String? address,
    String? phone,
    String? gender,
  }) async {
    try {
      final result = await dio.put<JsonObject>(
        'car-owners/$id',
        data: {
          'name': name,
          'address': address,
          'phone': phone,
          'gender': gender,
          'isAutoAcceptOrder': isAutoAcceptOrder.toString(),
        },
      );

      if (result.statusCode == StatusCodes.status201Created) {
        final data = CarOwner.fromJson(result.data!);
        return data;
      }

      return null;
    } on DioError catch (_) {
      return null;
    }
  }

  Future<Driver?> updateDriver({
    required String id,
    String? name,
    String? address,
    String? phone,
    String? gender,
  }) async {
    try {
      final result = await dio.put<JsonObject>(
        'drivers/$id',
        data: {
          'name': name,
          'address': address,
          'phone': phone,
          'gender': gender,
        },
      );

      if (result.statusCode == StatusCodes.status201Created) {
        final data = Driver.fromJson(result.data!);
        return data;
      }

      return null;
    } on DioError catch (_) {
      return null;
    }
  }
}
