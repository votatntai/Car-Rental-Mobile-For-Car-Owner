// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$$_NotificationFromJson(Map<String, dynamic> json) =>
    _$_Notification(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      link: json['link'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isRead: json['isRead'] as bool,
      accountId: json['accountId'] as String,
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'link': instance.link,
      'createdAt': instance.createdAt.toIso8601String(),
      'isRead': instance.isRead,
      'accountId': instance.accountId,
    };
