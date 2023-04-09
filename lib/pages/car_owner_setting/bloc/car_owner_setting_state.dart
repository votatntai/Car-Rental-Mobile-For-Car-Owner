part of 'car_owner_setting_bloc.dart';

@freezed
class CarOwnerSettingState with _$CarOwnerSettingState {
  const factory CarOwnerSettingState.initial() = _Initial;
  const factory CarOwnerSettingState.loading() = _Loading;
  const factory CarOwnerSettingState.success({
    required CarOwner carOwner,
  }) = _Success;
  const factory CarOwnerSettingState.failure({
    required String message,
  }) = _Failure;
}
