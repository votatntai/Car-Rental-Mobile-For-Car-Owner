part of 'car_owner_notification_bloc.dart';

@freezed
class CarOwnerNotificationState with _$CarOwnerNotificationState {
  const factory CarOwnerNotificationState({
    ScrollPagination<Notification>? scrollPagination,
  }) = _CarOwnerNotificationState;
}
