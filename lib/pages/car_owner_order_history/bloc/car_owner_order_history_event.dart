part of 'car_owner_order_history_bloc.dart';

@freezed
class CarOwnerOrderHistoryEvent with _$CarOwnerOrderHistoryEvent {
  const factory CarOwnerOrderHistoryEvent.started() = _Started;
}
