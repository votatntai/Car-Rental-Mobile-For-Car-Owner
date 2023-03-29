part of 'car_owner_notification_bloc.dart';

@freezed
class CarOwnerNotificationEvent with _$CarOwnerNotificationEvent {
  const factory CarOwnerNotificationEvent.started() = _Started;
  const factory CarOwnerNotificationEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;
}
