part of 'driver_order_detail_bloc.dart';

@freezed
class DriverOrderDetailEvent with _$DriverOrderDetailEvent {
  const factory DriverOrderDetailEvent.started({
    Order? order,
  }) = _Started;
}
