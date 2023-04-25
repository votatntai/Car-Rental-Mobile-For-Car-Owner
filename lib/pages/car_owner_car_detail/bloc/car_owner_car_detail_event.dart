part of 'car_owner_car_detail_bloc.dart';

@freezed
class CarOwnerCarDetailEvent with _$CarOwnerCarDetailEvent {
  const factory CarOwnerCarDetailEvent.started({
    String? carId,
  }) = _Started;

  const factory CarOwnerCarDetailEvent.statusChanged({
    required String status,
  }) = _StatusChanged;
}
