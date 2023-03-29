part of 'car_owner_profile_bloc.dart';

@freezed
class CarOwnerProfileState with _$CarOwnerProfileState {
  const factory CarOwnerProfileState({
    CarOwner? carOwner,
  }) = _CarOwnerProfileState;
}
