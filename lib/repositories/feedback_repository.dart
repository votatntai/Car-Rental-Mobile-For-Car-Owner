import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/feedback.dart';
import 'package:car_rental_for_car_owner/models/pagination.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:dio/dio.dart';

class FeedbackRepository {
  FeedbackRepository({required this.dio});

  final Dio dio;

  Future<bool> createFeedbackForCar(FeedbackModel feedback) async {
    try {
      final result = await dio.post<dynamic>(
        'feed-backs/car',
        data: {
          'orderId': feedback.orderId ?? '',
          'carId': feedback.carId ?? '',
          'driverId': feedback.driverId ?? '',
          'star': feedback.star,
          'content': feedback.content ?? '',
        },
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        return true;
      }

      return false;
    } on DioError catch (e) {
      return false;
    }
  }

  Future<bool> createFeedbackForDriver(FeedbackModel feedback) async {
    try {
      final result = await dio.post<dynamic>(
        'feed-backs/driver',
        data: {
          'orderId': feedback.orderId ?? '',
          'carId': feedback.carId ?? '',
          'driverId': feedback.driverId ?? '',
          'star': feedback.star,
          'content': feedback.content ?? '',
        },
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        return true;
      }

      return false;
    } on DioError catch (e) {
      return false;
    }
  }

  Future<ApiResponse<PaginationResult<FeedbackModel>>> feedbacksByCar({
    required String carId,
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final response = await dio.get<JsonObject>(
        '/feed-backs/cars/$carId',
        queryParameters: {
          'pageNumber': pageNumber - 1,
          'pageSize': pageSize,
        },
      );

      try {
        if (response.data != null &&
            response.statusCode == StatusCodes.status200OK) {
          return ApiSuccess(
            PaginationResult<FeedbackModel>.fromJson(
              response.data!,
              (json) => FeedbackModel.fromJson(json as JsonObject),
            ),
          );
        }
      } catch (e) {
        return ApiSuccess(
          PaginationResult<FeedbackModel>(
            data: [],
            pagination: Pagination(
              pageNumber: 0,
              pageSize: 0,
              totalRow: 0,
            ),
          ),
        );
      }

      return ApiSuccess(
        PaginationResult<FeedbackModel>(
          data: [],
          pagination: Pagination(
            pageNumber: 0,
            pageSize: 0,
            totalRow: 0,
          ),
        ),
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<PaginationResult<FeedbackModel>>> feedbacksByDriver({
    required String driver,
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final response = await dio.get<JsonObject>(
        '/feed-backs/drivers/$driver',
        queryParameters: {
          'pageNumber': pageNumber - 1,
          'pageSize': pageSize,
        },
      );

      try {
        if (response.data != null &&
            response.statusCode == StatusCodes.status200OK) {
          return ApiSuccess(
            PaginationResult<FeedbackModel>.fromJson(
              response.data!,
              (json) => FeedbackModel.fromJson(json as JsonObject),
            ),
          );
        }
      } catch (e) {
        return ApiSuccess(
          PaginationResult<FeedbackModel>(
            data: [],
            pagination: Pagination(
              pageNumber: 0,
              pageSize: 0,
              totalRow: 0,
            ),
          ),
        );
      }

      return ApiSuccess(
        PaginationResult<FeedbackModel>(
          data: [],
          pagination: Pagination(
            pageNumber: 0,
            pageSize: 0,
            totalRow: 0,
          ),
        ),
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
