import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/pagination.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/models/transaction.dart';
import 'package:dio/dio.dart';

class TransactionRepository {
  TransactionRepository({
    required this.dio,
  });

  final Dio dio;

  // get all transactions with ApiResponse and pagination result
  Future<ApiResponse<PaginationResult<Transaction>>> transactions({
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final response = await dio.get<JsonObject>(
        '/transactions',
        queryParameters: {
          'pageNumber': pageNumber - 1,
          'pageSize': pageSize,
        },
      );

      if (response.data != null &&
          response.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          PaginationResult<Transaction>.fromJson(
            response.data!,
            (json) => Transaction.fromJson(json as JsonObject),
          ),
        );
      }

      return ApiSuccess(
        PaginationResult<Transaction>(
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

  Future<ApiResponse<Transaction>> transactionById({
    required String transactionId,
  }) async {
    final transactionResult = await this.transactions(
      pageNumber: 1,
      pageSize: 1000000,
    );

    if (transactionResult is ApiError) {
      return ApiError(error: (transactionResult as ApiError).error);
    }

    final transactions =
        (transactionResult as ApiSuccess<PaginationResult<Transaction>>)
            .value
            .data;

    try {
      final transaction = transactions.firstWhere(
        (element) => element.id == transactionId,
      );

      return ApiSuccess(transaction);
    } catch (e) {
      return const ApiError(error: 'Giao dịch không tồn tại');
    }
  }
}
