part of 'driver_notification_bloc.dart';

@freezed
class DriverNotificationEvent with _$DriverNotificationEvent {
  const factory DriverNotificationEvent.started() = _Started;
  const factory DriverNotificationEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;
}
