part of 'driver_order_history_bloc.dart';

@freezed
class DriverOrderHistoryEvent with _$DriverOrderHistoryEvent {
  const factory DriverOrderHistoryEvent.started() = _Started;
}
