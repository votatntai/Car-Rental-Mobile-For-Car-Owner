// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationData _$$_NotificationDataFromJson(Map<String, dynamic> json) =>
    _$_NotificationData(
      link: json['link'] as String?,
      type: json['type'] as String,
      isRead: json['isRead'] as bool,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_NotificationDataToJson(_$_NotificationData instance) =>
    <String, dynamic>{
      'link': instance.link,
      'type': instance.type,
      'isRead': instance.isRead,
      'createAt': instance.createAt.toIso8601String(),
    };
