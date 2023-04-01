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
import 'package:car_rental_for_car_owner/models/production_company.dart';
import 'package:car_rental_for_car_owner/models/type_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final car = Car(
  id: '089b2727-efef-4858-8932-8ad868428201',
  name: 'BMW I8',
  licensePlate: '71H3.14567',
  price: 1234567,
  rented: 112,
  images: [],
  feedBacks: [],
  carFeatures: [
    CarFeature(
      description: 'description',
      feature: const Feature(
        id: '1',
        name: 'feature',
        description: 'description',
      ),
    ),
    CarFeature(
      description: 'description 2',
      feature: const Feature(
        id: '2',
        name: 'feature 2',
        description: 'description 2',
      ),
    ),
  ],
  carTypes: [
    CarType(
      type: TypeModel(
        id: 'id',
        name: 'type',
        description: 'description',
      ),
      description: 'description',
    ),
    CarType(
      type: TypeModel(
        id: 'id2',
        name: 'type2',
        description: 'description2',
      ),
      description: 'description2',
    ),
  ],
  productionCompany: ProductionCompany(
    id: '1',
    name: 'Audi',
    description: 'Audi',
  ),
  model: CarModel(
    id: '1',
    name: 'car model',
    transmissionType: 'fuld',
    fuelType: 'f',
    chassis: 'df',
    seater: 10,
    yearOfManufacture: 1,
    fuelConsumption: '121',
  ),
  location: Location(
    id: '1',
    longitude: 106.7590913,
    latitude: 10.8538939,
  ),
  additionalCharge: AdditionalCharge(
    id: '1',
    maximumDistance: 100,
    distanceSurcharge: 100,
    timeSurcharge: 111,
  ),
  star: 2,
  status: 'hoạt động',
  receiveStartTime: const TimeOfDay(hour: 10, minute: 30),
  receiveEndTime: const TimeOfDay(hour: 10, minute: 30),
  returnStartTime: const TimeOfDay(hour: 10, minute: 30),
  returnEndTime: const TimeOfDay(hour: 10, minute: 30),
  carOwner: const CarOwner(
    id: '1',
    name: 'Trung Hieu Nguyen',
    phone: '09',
    gender: 'nam',
  ),
);

class CarRepository {
  CarRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<List<Car>>> myCars() async {
    try {
      // final result = await dio.get<JsonObject>(
      //   'api/car-owner/cars',
      // );

      // if (result.data != null && result.statusCode == StatusCodes.status200OK) {
      //   return ApiSuccess(
      //     PaginationResult<Car>.fromJson(
      //       result.data!,
      //       (object) => Car.fromJson(object as JsonObject),
      //     ),
      //   );
      // }

      final cars = [
        car,
        car.copyWith(
          id: '2',
          name: 'BMW I9',
          location: Location(
            id: '2',
            longitude: 106.6911163,
            latitude: 10.8215675,
          ),
        ),
        car.copyWith(
          id: '3',
          name: 'BMW I10',
          location: Location(
            id: '3',
            longitude: 106.8389884,
            latitude: 10.8370098,
          ),
        ),
      ];

      return ApiResponse.success(cars);

      // return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Car>> carById(String carId) async {
    try {
      // final result = await dio.get<JsonObject>(
      //   'cars/$carId',
      // );

      // if (result.data != null && result.statusCode == StatusCodes.status200OK) {
      //   return ApiSuccess(
      //     Car.fromJson(result.data!),
      //   );
      // }

      return ApiSuccess(car);

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
