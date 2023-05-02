part of 'car_owner_detail_bloc.dart';

@freezed
class CarOwnerDetailEvent with _$CarOwnerDetailEvent {
  const factory CarOwnerDetailEvent.started({
    required String carOwnerId,
  }) = _Started;
}
