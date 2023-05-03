import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/commons/loading_dialog_service.dart';
import 'package:car_rental_for_car_owner/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/models/feedback.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/repositories/feedback_repository.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_order_detail_event.dart';
part 'driver_order_detail_state.dart';
part 'driver_order_detail_bloc.freezed.dart';

class DriverOrderDetailBloc
    extends Bloc<DriverOrderDetailEvent, DriverOrderDetailState> {
  DriverOrderDetailBloc({
    required this.orderRepository,
    required this.feedbackRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_OrderStatusChanged>(_onOrderStatusChanged);
  }

  final OrderRepository orderRepository;
  final FeedbackRepository feedbackRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<DriverOrderDetailState> emit,
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

    if (order.orderDetails.isNotEmpty) {
      final orderDetail = order.orderDetails.first;
      final driver = orderDetail.driver;

      if (driver != null) {
        final feedbackResult = await feedbackRepository.feedbacksByDriver(
          driver: driver.id,
          pageNumber: 1,
          pageSize: 11111,
        );

        if (feedbackResult is ApiSuccess) {
          final feedbacks =
              (feedbackResult as ApiSuccess<PaginationResult<FeedbackModel>>)
                  .value
                  .data;
          final feedbackList = feedbacks.where(
            (element) => element.orderId == order.id,
          );

          if (feedbackList.isNotEmpty) {
            final feedback = feedbackList.first;
            emit(
              _Success(
                order: order,
                feedback: feedback,
              ),
            );
            return;
          }
        }
      }
    }
  }

  FutureOr<void> _onOrderStatusChanged(
    _OrderStatusChanged event,
    Emitter<DriverOrderDetailState> emit,
  ) async {
    LoadingDialogService.load();

    final orderResult = await orderRepository.updateOrderStatus(
      id: event.orderId,
      status: event.status,
    );

    LoadingDialogService.dispose();

    if (orderResult == false) {
      showMessageDialog(title: 'Lỗi', message: 'Cập nhật trạng thái thất bại');
    }

    add(_Started(order: (state as _Success).order));
  }
}
