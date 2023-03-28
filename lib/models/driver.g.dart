// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Driver _$$_DriverFromJson(Map<String, dynamic> json) => _$_Driver(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      phone: json['phone'] as String,
      gender: json['gender'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankName: json['bankName'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      status: json['status'] as String,
      accountStatus: json['accountStatus'] as bool,
    );

Map<String, dynamic> _$$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'gender': instance.gender,
      'avatarUrl': instance.avatarUrl,
      'bankAccountNumber': instance.bankAccountNumber,
      'bankName': instance.bankName,
      'location': instance.location,
      'status': instance.status,
      'accountStatus': instance.accountStatus,
    };
