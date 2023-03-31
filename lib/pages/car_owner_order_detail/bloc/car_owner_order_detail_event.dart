part of 'car_owner_order_detail_bloc.dart';

@freezed
class CarOwnerOrderDetailEvent with _$CarOwnerOrderDetailEvent {
  const factory CarOwnerOrderDetailEvent.started({
    Order? order,
  }) = _Started;
}
