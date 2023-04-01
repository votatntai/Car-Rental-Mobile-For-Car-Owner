import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_order_history_event.dart';
part 'car_owner_order_history_state.dart';
part 'car_owner_order_history_bloc.freezed.dart';

class CarOwnerOrderHistoryBloc
    extends Bloc<CarOwnerOrderHistoryEvent, CarOwnerOrderHistoryState> {
  CarOwnerOrderHistoryBloc({
    required this.orderRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final OrderRepository orderRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerOrderHistoryState> emit,
  ) async {
    emit(const _Loading());

    final historyOrderResult = await orderRepository.historyOrders();

    if (historyOrderResult is ApiError) {
      emit(const _Failure(message: 'Something went wrong'));
      return;
    }

    final historyOrders = (historyOrderResult as ApiSuccess<List<Order>>).value;

    emit(_Success(historyOrders: historyOrders));
  }
}
