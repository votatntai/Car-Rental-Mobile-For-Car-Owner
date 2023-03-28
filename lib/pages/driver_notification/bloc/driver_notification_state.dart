part of 'driver_notification_bloc.dart';

@freezed
class DriverNotificationState with _$DriverNotificationState {
  const factory DriverNotificationState({
    ScrollPagination<Notification>? scrollPagination,
  }) = _DriverNotificationState;
}
