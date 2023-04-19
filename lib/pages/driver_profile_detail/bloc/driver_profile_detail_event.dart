part of 'driver_profile_detail_bloc.dart';

@freezed
class DriverProfileDetailEvent with _$DriverProfileDetailEvent {
  const factory DriverProfileDetailEvent.started() = _Started;
  const factory DriverProfileDetailEvent.saved({
    String? name,
    String? address,
    String? gender,
    String? phone,
  }) = _Saved;
}
