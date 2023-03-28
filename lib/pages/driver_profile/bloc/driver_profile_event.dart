part of 'driver_profile_bloc.dart';

@freezed
class DriverProfileEvent with _$DriverProfileEvent {
  const factory DriverProfileEvent.started() = _Started;
}
