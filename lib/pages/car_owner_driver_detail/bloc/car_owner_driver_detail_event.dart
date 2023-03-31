part of 'car_owner_driver_detail_bloc.dart';

@freezed
class CarOwnerDriverDetailEvent with _$CarOwnerDriverDetailEvent {
  const factory CarOwnerDriverDetailEvent.started({
    required String driverId,
  }) = _Started;
}
