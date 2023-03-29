import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_home_event.dart';
part 'driver_home_state.dart';
part 'driver_home_bloc.freezed.dart';

class DriverHomeBloc extends Bloc<DriverHomeEvent, DriverHomeState> {
  DriverHomeBloc({
    required this.orderRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStart);
  }

  final OrderRepository orderRepository;

  FutureOr<void> _onStart(
    _Started event,
    Emitter<DriverHomeState> emit,
  ) async {
    emit(const _Loading());

    final currentOrderResult = await orderRepository.currentOrders();
    final calendarOrdersResult = await orderRepository.calendarOrders();

    if (currentOrderResult is ApiError || calendarOrdersResult is ApiError) {
      emit(const _Failure(message: 'Something went wrong'));
      return;
    }

    final currentOrders = (currentOrderResult as ApiSuccess<List<Order>>).value;
    final calendarOrders =
        (calendarOrdersResult as ApiSuccess<List<Order>>).value;

    emit(
        _Success(currentOrders: currentOrders, calendarOrders: calendarOrders));
  }
}
