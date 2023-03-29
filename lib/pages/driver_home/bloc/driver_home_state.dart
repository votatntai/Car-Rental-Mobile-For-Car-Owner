part of 'driver_home_bloc.dart';

@freezed
class DriverHomeState with _$DriverHomeState {
  const factory DriverHomeState.initial() = _Initial;
  const factory DriverHomeState.loading() = _Loading;
  const factory DriverHomeState.success({
    required List<Order> currentOrders,
    required List<Order> calendarOrders,
  }) = _Success;
  const factory DriverHomeState.failure({required String message}) = _Failure;
}
