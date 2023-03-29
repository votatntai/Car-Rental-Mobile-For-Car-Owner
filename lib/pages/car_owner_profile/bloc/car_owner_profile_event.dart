part of 'car_owner_profile_bloc.dart';

@freezed
class CarOwnerProfileEvent with _$CarOwnerProfileEvent {
  const factory CarOwnerProfileEvent.started() = _Started;
}