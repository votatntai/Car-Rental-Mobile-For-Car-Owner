part of 'car_owner_home_bloc.dart';

@freezed
class CarOwnerHomeEvent with _$CarOwnerHomeEvent {
  const factory CarOwnerHomeEvent.started() = _Started;
}