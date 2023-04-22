part of 'car_registration_detail_bloc.dart';

@freezed
class CarRegistrationDetailEvent with _$CarRegistrationDetailEvent {
  const factory CarRegistrationDetailEvent.started({
    String? id,
  }) = _Started;
}
