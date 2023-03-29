import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/customer.dart';
import 'package:car_rental_for_car_owner/models/enums/gender.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:dio/dio.dart';

class OrderRepository {
  OrderRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<List<Order>>> currentOrders() async {
    try {
      final currentOrder = [
        Order(
          id: '1',
          customer: Customer(
            id: '1',
            name: 'Trung Hieu',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now(),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now()..add(const Duration(days: 1)),
          endTime: DateTime.now()
            ..add(
              const Duration(days: -100),
            ),
          rentalUnitPrice: 100000,
          deliveryCost: 100000,
          deposit: 10000,
        )
      ];

      return ApiSuccess(currentOrder);
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<List<Order>>> historyOrders() async {
    try {
      final currentOrder = [
        Order(
          id: '1',
          customer: Customer(
            id: '1',
            name: 'Trung Hieu',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now()
            ..add(
              const Duration(days: -100),
            ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now(),
          endTime: DateTime.now()
            ..add(
              const Duration(
                hours: 10,
              ),
            ),
          rentalUnitPrice: 100000,
          deliveryCost: 100000,
          deposit: 10000,
        ),
        Order(
          id: '1',
          customer: Customer(
            id: '1',
            name: 'Trung Hieu',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now()
            ..add(
              const Duration(days: -100),
            ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now()
            ..add(const Duration(days: -10, minutes: 10)),
          endTime: DateTime.now()
            ..add(
              const Duration(days: -9),
            ),
          rentalUnitPrice: 100000,
          deliveryCost: 100000,
          deposit: 10000,
        ),
        Order(
          id: '1',
          customer: Customer(
            id: '1',
            name: 'Trung Hieu',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now()
            ..add(
              const Duration(days: -100),
            ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now()..add(const Duration(days: -7)),
          endTime: DateTime.now()
            ..add(
              const Duration(days: -6),
            ),
          rentalUnitPrice: 100000,
          deliveryCost: 100000,
          deposit: 10000,
        ),
        Order(
          id: '1',
          customer: Customer(
            id: '1',
            name: 'Trung Hieu',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now()
            ..add(
              const Duration(days: -100),
            ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now()..add(const Duration(days: -5)),
          endTime: DateTime.now()
            ..add(
              const Duration(days: -2),
            ),
          rentalUnitPrice: 100000,
          deliveryCost: 100000,
          deposit: 10000,
        )
      ];

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
}
