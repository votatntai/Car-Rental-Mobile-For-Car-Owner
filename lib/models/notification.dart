import 'package:car_rental_for_car_owner/models/notification_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required String id,
    required String title,
    required String body,
    NotificationData? data,
    // String? link,
    // required DateTime createdAt,
    // required bool isRead,
    // required String accountId,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
