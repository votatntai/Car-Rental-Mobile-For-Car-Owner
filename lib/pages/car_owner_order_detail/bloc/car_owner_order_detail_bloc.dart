import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_order_detail_event.dart';
part 'car_owner_order_detail_state.dart';
part 'car_owner_order_detail_bloc.freezed.dart';

class CarOwnerOrderDetailBloc
    extends Bloc<CarOwnerOrderDetailEvent, CarOwnerOrderDetailState> {
  CarOwnerOrderDetailBloc() : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerOrderDetailState> emit,
  ) async {
    emit(const _Loading());

    if (event.order == null) {
      emit(const _Failure(message: 'Lỗi không xác định'));
      return;
    }

    emit(_Success(order: event.order!));
  }
}
