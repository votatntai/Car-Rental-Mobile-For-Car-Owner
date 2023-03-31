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
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final orderDetail = OrderDetail(
  id: '1',
  deliveryLocation: Location(
    id: '1',
    longitude: 106.7599045,
    latitude: 10.8529679,
  ),
  pickupLocation: Location(
    id: '1',
    longitude: 106.7599045,
    latitude: 10.8529679,
  ),
  car: Car(
    id: '1',
    licensePlate: 'DB',
    name: 'car',
    price: 100000,
    rented: 2121,
    images: [],
    feedBacks: [],
    carFeatures: [],
    carTypes: [],
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
      longitude: 12,
      latitude: 21,
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
  ),
  deliveryTime: DateTime.now(),
  pickupTime: DateTime.now(),
  driver: Driver(
    id: 'E88AC41C-CF83-4996-814F-4552311A8142',
    name: 'Driver demo',
    address: '45 chuong duong',
    phone: '090909090',
    gender: Gender.male.name,
    status: 'status',
    accountStatus: true,
  ),
);

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
          startTime: DateTime.now().add(const Duration(days: 1)),
          endTime: DateTime.now().add(
            const Duration(days: 2),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        )
      ];

      return ApiSuccess(currentOrder);
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<List<Order>>> calendarOrders() async {
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
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now(),
          endTime: DateTime.now().add(
            const Duration(
              hours: 10,
            ),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        ),
        Order(
          id: '2',
          customer: Customer(
            id: '1',
            name: 'Hoang',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: -10, minutes: 10)),
          endTime: DateTime.now().add(
            const Duration(days: -9),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        ),
        Order(
          id: '3',
          customer: Customer(
            id: '1',
            name: 'Long',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: -7)),
          endTime: DateTime.now().add(
            const Duration(days: -6),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        ),
        Order(
          id: '4',
          customer: Customer(
            id: '1',
            name: 'Trung Hieu',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: -5)),
          endTime: DateTime.now().add(
            const Duration(days: -2),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        ),
        Order(
          id: '5',
          customer: Customer(
            id: '1',
            name: 'Test',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.accepted,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: -5)),
          endTime: DateTime.now().add(
            const Duration(days: -2),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
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
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.finished,
          createdAt: DateTime.now(),
          startTime: DateTime.now(),
          endTime: DateTime.now().add(
            const Duration(
              hours: 10,
            ),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        ),
        Order(
          id: '1',
          customer: Customer(
            id: '1',
            name: 'Hoang',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.finished,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: -10, minutes: 10)),
          endTime: DateTime.now().add(
            const Duration(days: -9),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        ),
        Order(
          id: '1',
          customer: Customer(
            id: '1',
            name: 'Long',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.finished,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: -7)),
          endTime: DateTime.now().add(
            const Duration(days: -6),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        ),
        Order(
          id: '1',
          customer: Customer(
            id: '1',
            name: 'Trung Hieu',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now().add(
            const Duration(days: -100),
          ),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.finished,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: -5)),
          endTime: DateTime.now().add(
            const Duration(days: -2),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
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

  Future<ApiResponse<List<Order>>> pendingOrders() async {
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
          status: OrderStatus.pending,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: 1)),
          endTime: DateTime.now().add(
            const Duration(days: 2),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        ),
        Order(
          id: '2',
          customer: Customer(
            id: '2',
            name: 'Hai Nam',
            phone: '090909090',
            gender: Gender.male,
          ),
          rentalTime: DateTime.now(),
          amount: 1000000,
          isPaid: true,
          status: OrderStatus.pending,
          createdAt: DateTime.now(),
          startTime: DateTime.now().add(const Duration(days: 1)),
          endTime: DateTime.now().add(
            const Duration(days: 2),
          ),
          unitPrice: 100000,
          deliveryFee: 100000,
          deposit: 10000,
          orderDetail: orderDetail,
        )
      ];

      return ApiSuccess(currentOrder);
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
