import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/commons/loading_dialog_service.dart';
import 'package:car_rental_for_car_owner/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_order_detail_event.dart';
part 'car_owner_order_detail_state.dart';
part 'car_owner_order_detail_bloc.freezed.dart';

class CarOwnerOrderDetailBloc
    extends Bloc<CarOwnerOrderDetailEvent, CarOwnerOrderDetailState> {
  CarOwnerOrderDetailBloc({
    required this.orderRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_OrderStatusChanged>(_onOrderStatusChanged);
    on<_CancelOrder>(_onCancelOrder);
  }

  final OrderRepository orderRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerOrderDetailState> emit,
  ) async {
    emit(const _Loading());

    if (event.order == null) {
      emit(const _Failure(message: 'Lỗi không xác định'));
      return;
    }

    final orderResult = await orderRepository.getOrderById(
      id: event.order!.id,
    );

    if (orderResult is ApiError) {
      emit(const _Failure(message: 'Lỗi không xác định'));
      return;
    }

    final order = (orderResult as ApiSuccess<Order>).value;

    emit(_Success(order: order));
  }

  FutureOr<void> _onOrderStatusChanged(
    _OrderStatusChanged event,
    Emitter<CarOwnerOrderDetailState> emit,
  ) async {
    LoadingDialogService.load();

    final orderResult = await orderRepository.updateOrderStatus(
      id: event.orderId,
      status: event.orderStatus,
    );

    LoadingDialogService.dispose();

    if (orderResult == false) {
      showMessageDialog(title: 'Lỗi', message: 'Cập nhật trạng thái thất bại');
    }

    add(_Started(order: (state as _Success).order));
  }

  FutureOr<void> _onCancelOrder(
    _CancelOrder event,
    Emitter<CarOwnerOrderDetailState> emit,
  ) async {
    LoadingDialogService.load();

    final orderResult = await orderRepository.updateOrderStatus(
      id: event.orderId,
      status: OrderStatus.canceled,
      description: event.reason,
    );

    LoadingDialogService.dispose();

    if (orderResult == false) {
      showMessageDialog(title: 'Lỗi', message: 'Cập nhật trạng thái thất bại');
    }

    add(_Started(order: (state as _Success).order));
  }
}
