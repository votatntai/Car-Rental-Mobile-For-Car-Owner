part of 'car_owner_setting_bloc.dart';

@freezed
class CarOwnerSettingEvent with _$CarOwnerSettingEvent {
  const factory CarOwnerSettingEvent.started() = _Started;
  const factory CarOwnerSettingEvent.changeAutoAcceptOrder({
    required bool isAutoAcceptOrder,
  }) = _ChangeAutoAcceptOrder;
}
