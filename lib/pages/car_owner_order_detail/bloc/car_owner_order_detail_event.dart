part of 'car_owner_order_detail_bloc.dart';

@freezed
class CarOwnerOrderDetailEvent with _$CarOwnerOrderDetailEvent {
  const factory CarOwnerOrderDetailEvent.started({
    Order? order,
  }) = _Started;

  const factory CarOwnerOrderDetailEvent.orderStatusChanged({
    required String orderId,
    required OrderStatus orderStatus,
  }) = _OrderStatusChanged;

  const factory CarOwnerOrderDetailEvent.cancelOrder({
    required String orderId,
    required String reason,
  }) = _CancelOrder;
}
