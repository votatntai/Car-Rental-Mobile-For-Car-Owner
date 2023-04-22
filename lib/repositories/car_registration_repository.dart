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
      List<MultipartFile> licenses = [];
      List<MultipartFile> images = [];

      for (final image in carRegistrationModel.images) {
        final file = await MultipartFile.fromFile(image.path);
        images.add(file);
      }

      for (final image in carRegistrationModel.licenses) {
        final file = await MultipartFile.fromFile(image.path);
        licenses.add(file);
      }

      final formData = FormData.fromMap({
        'licenses': licenses,
        'images': images,
      });

      final result = await dio.post<dynamic>(
        'car-registrations',
        queryParameters: {
          'model.name': carRegistrationModel.name,
          'model.licensePlate': carRegistrationModel.licensePlate,
          'model.transmissionType': carRegistrationModel.transmissionType,
          'model.fuelType': carRegistrationModel.fuelType,
          'model.model': carRegistrationModel.model,
          'model.seater': carRegistrationModel.seater.toString(),
          'model.price': carRegistrationModel.price.toString(),
          'model.fuelConsumption': carRegistrationModel.fuelConsumption,
          'model.chassis': carRegistrationModel.chassis,
          'model.yearOfManufacture':
              carRegistrationModel.yearOfManufacture.toString(),
          'model.productionCompany': carRegistrationModel.productionCompany,
          'model.location': carRegistrationModel.location,
          'model.type': carRegistrationModel.type,
          'model.description': carRegistrationModel.description,
          'model.additionalCharge.maximumDistance':
              carRegistrationModel.additionalCharge.maximumDistance.toString(),
          'model.additionalCharge.distanceSurcharge': carRegistrationModel
              .additionalCharge.distanceSurcharge
              .toString(),
          'model.additionalCharge.timeSurcharge':
              carRegistrationModel.additionalCharge.timeSurcharge.toString(),
          'model.additionalCharge.additionalDistance': carRegistrationModel
              .additionalCharge.additionalDistance
              .toString(),
          'model.additionalCharge.additionalTime':
              carRegistrationModel.additionalCharge.additionalTime.toString(),
        },
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
        ),
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

  Future<ApiResponse<CarRegistration>> getCarRegistrationById(
    String id,
  ) async {
    try {
      final result = await dio.get<JsonObject>(
        'car-registrations/$id',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final carRegistration = CarRegistration.fromJson(result.data!);

        return ApiSuccess(carRegistration);
      }

      return const ApiError(
        error: 'Lỗi không xác định',
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
