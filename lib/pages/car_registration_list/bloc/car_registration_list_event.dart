part of 'car_registration_list_bloc.dart';

@freezed
class CarRegistrationListEvent with _$CarRegistrationListEvent {
  const factory CarRegistrationListEvent.started() = _Started;
  const factory CarRegistrationListEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;
}
