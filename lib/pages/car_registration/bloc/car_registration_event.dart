part of 'car_registration_bloc.dart';

@freezed
class CarRegistrationEvent with _$CarRegistrationEvent {
  const factory CarRegistrationEvent.started() = _Started;
}