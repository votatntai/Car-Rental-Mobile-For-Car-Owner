part of 'driver_order_history_bloc.dart';

@freezed
class DriverOrderHistoryState with _$DriverOrderHistoryState {
  const factory DriverOrderHistoryState.initial() = _Initial;
  const factory DriverOrderHistoryState.loading() = _Loading;
  const factory DriverOrderHistoryState.success({
    required List<Order> historyOrders,
  }) = _Success;
  const factory DriverOrderHistoryState.failure({required String message}) =
      _Failure;
}
