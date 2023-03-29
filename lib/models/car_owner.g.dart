// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarOwner _$$_CarOwnerFromJson(Map<String, dynamic> json) => _$_CarOwner(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      phone: json['phone'] as String,
      gender: json['gender'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
    );

Map<String, dynamic> _$$_CarOwnerToJson(_$_CarOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'gender': instance.gender,
      'avatarUrl': instance.avatarUrl,
      'bankAccountNumber': instance.bankAccountNumber,
    };
