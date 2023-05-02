import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/additional_charge.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/car_feature.dart';
import 'package:car_rental_for_car_owner/models/car_model.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/models/car_type.dart';
import 'package:car_rental_for_car_owner/models/feature.dart';
import 'package:car_rental_for_car_owner/models/location.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/models/production_company.dart';
import 'package:car_rental_for_car_owner/models/type_model.dart';
import 'package:car_rental_for_car_owner/repositories/models/update_car_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CarRepository {
  CarRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<List<Car>>> myCars({
    required String carOwnerId,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
        'cars/for-car-owners/$carOwnerId',
        queryParameters: {
          'pageNumber': 0,
          'pageSize': 1000,
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final paginationResult = PaginationResult<Car>.fromJson(
          result.data!,
          (object) => Car.fromJson(object as JsonObject),
        );

        // final cars = paginationResult.data
        //     .where((element) => element.carOwner?.id == carOwnerId)
        //     .toList();

        final cars = paginationResult.data;

        return ApiSuccess(cars);
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Car>> carById(String carId) async {
    try {
      final result = await dio.get<JsonObject>(
        'cars/$carId',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Car.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Car>> updateCar({
    required String id,
    required UpdateCarModel model,
  }) async {
    try {
      final result = await dio.put<JsonObject>(
        'cars/$id',
        data: model.toJson(),
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        return ApiSuccess(
          Car.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<List<Car>>> carByCarOwner({
    required String carOwnerId,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
        'cars/for-car-owners/$carOwnerId',
        queryParameters: {
          'pageNumber': 0,
          'pageSize': 1000,
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final paginationResult = PaginationResult<Car>.fromJson(
          result.data!,
          (object) => Car.fromJson(object as JsonObject),
        );

        // final cars = paginationResult.data
        //     .where((element) => element.carOwner?.id == carOwnerId)
        //     .toList();

        final cars = paginationResult.data;

        return ApiSuccess(cars);
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
