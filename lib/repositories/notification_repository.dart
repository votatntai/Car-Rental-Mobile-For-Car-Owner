import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/notification.dart';
import 'package:car_rental_for_car_owner/models/pagination.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:dio/dio.dart';

class NotificationRepository {
  NotificationRepository({
    required this.dio,
  });
  final Dio dio;

  // get all notifications with ApiResponse and pagination result
  Future<ApiResponse<PaginationResult<Notification>>> notifications({
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final response = await dio.get<JsonObject>(
        '/notifications',
        queryParameters: {
          'pageNumber': pageNumber - 1,
          'pageSize': pageSize,
        },
      );

      if (response.data != null &&
          response.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          PaginationResult<Notification>.fromJson(
            response.data!,
            (json) => Notification.fromJson(json as JsonObject),
          ),
        );
      }

      return ApiSuccess(
        PaginationResult<Notification>(
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
