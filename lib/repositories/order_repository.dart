import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/additional_charge.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/car_model.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/models/customer.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:car_rental_for_car_owner/models/enums/gender.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/models/location.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/models/order_detail.dart';
import 'package:car_rental_for_car_owner/models/pagination.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class OrderRepository {
  OrderRepository({
    required this.dio,
  });

  final Dio dio;

  // driver
  Future<ApiResponse<List<Order>>> currentOrders() async {
    try {
      //TODO: Update
      final orderResults = await fakeOrders(pageNumber: 1, pageSize: 1000);

      List<Order> currentOrder = <Order>[];

      if (orderResults is ApiSuccess<PaginationResult<Order>>) {
        currentOrder = orderResults.value.data
            .where((element) =>
                element.status != OrderStatus.canceled &&
                element.status != OrderStatus.pending &&
                element.status != OrderStatus.finished)
            .toList();
      }

      currentOrder.sort((a, b) => -1 * a.createAt.compareTo(b.createAt));

      return ApiSuccess(currentOrder);
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  // driver
  Future<ApiResponse<List<Order>>> calendarOrders() async {
    try {
      //TODO: Update
      final orderResults = await fakeOrders(pageNumber: 1, pageSize: 1000);

      List<Order> currentOrder = <Order>[];

      if (orderResults is ApiSuccess<PaginationResult<Order>>) {
        currentOrder = orderResults.value.data
            // .where((element) => element.status == OrderStatus.accepted)
            .toList();
      }

      currentOrder.sort((a, b) => -1 * a.createAt.compareTo(b.createAt));

      return ApiSuccess(currentOrder);
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  // driver, car Owner
  Future<ApiResponse<List<Order>>> historyOrders() async {
    try {
      //TODO: Update
      final orderResults = await fakeOrders(pageNumber: 1, pageSize: 1000);

      List<Order> currentOrder = <Order>[];

      if (orderResults is ApiSuccess<PaginationResult<Order>>) {
        currentOrder = orderResults.value.data
            // .where((element) => element.status == OrderStatus.accepted)
            .toList();
      }

      currentOrder.sort((a, b) => -1 * a.createAt.compareTo(b.createAt));
      return ApiSuccess(currentOrder);
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Order>> getOrderById({
    required String id,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
        'orders/$id',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Order.fromJson(result.data!),
        );
      }

      return const ApiError(
        error: 'Không tìm thấy đơn hàng',
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  // car owner
  Future<ApiResponse<List<Order>>> pendingOrders() async {
    try {
      //TODO: Update
      final orderResults = await fakeOrders(pageNumber: 1, pageSize: 1000);

      List<Order> currentOrder = <Order>[];

      if (orderResults is ApiSuccess<PaginationResult<Order>>) {
        currentOrder = orderResults.value.data
            .where((element) =>
                element.status != OrderStatus.canceled &&
                element.status != OrderStatus.finished)
            .toList();
      }

      currentOrder.sort((a, b) => -1 * a.createAt.compareTo(b.createAt));
      return ApiSuccess(currentOrder);
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<bool> updateOrderStatus({
    required String id,
    required OrderStatus status,
    String? description,
  }) async {
    try {
      final result = await dio.put<JsonObject>(
        'orders/status/$id',
        data: {
          'status': status.name,
          'description': description,
        },
      );

      if (result.statusCode == StatusCodes.status201Created) {
        return true;
      }

      return false;
    } on DioError catch (e) {
      return false;
    }
  }

  Future<ApiResponse<PaginationResult<Order>>> fakeOrders({
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
        'orders',
        queryParameters: {
          'pageNumber': pageNumber - 1,
          'pageSize': pageSize,
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          PaginationResult<Order>.fromJson(
            result.data!,
            (json) => Order.fromJson(json as JsonObject),
          ),
        );
      }

      return ApiSuccess(
        PaginationResult<Order>(
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
