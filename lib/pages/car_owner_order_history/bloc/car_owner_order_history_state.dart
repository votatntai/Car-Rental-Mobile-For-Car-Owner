part of 'car_owner_order_history_bloc.dart';

@freezed
class CarOwnerOrderHistoryState with _$CarOwnerOrderHistoryState {
  const factory CarOwnerOrderHistoryState.initial() = _Initial;
  const factory CarOwnerOrderHistoryState.loading() = _Loading;
  const factory CarOwnerOrderHistoryState.success({
    required List<Order> historyOrders,
  }) = _Success;
  const factory CarOwnerOrderHistoryState.failure({required String message}) =
      _Failure;
}
