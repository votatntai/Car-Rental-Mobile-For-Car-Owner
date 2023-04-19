part of 'car_owner_profile_detail_bloc.dart';

@freezed
class CarOwnerProfileDetailEvent with _$CarOwnerProfileDetailEvent {
  const factory CarOwnerProfileDetailEvent.started() = _Started;
  const factory CarOwnerProfileDetailEvent.saved({
    String? name,
    String? address,
    String? gender,
    String? phone,
  }) = _Saved;
}
