// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthData _$$_AuthDataFromJson(Map<String, dynamic> json) => _$_AuthData(
      status: $enumDecode(_$AuthenticationStatusEnumMap, json['status']),
      role: $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$_AuthDataToJson(_$_AuthData instance) =>
    <String, dynamic>{
      'status': _$AuthenticationStatusEnumMap[instance.status]!,
      'role': _$RoleEnumMap[instance.role]!,
    };

const _$AuthenticationStatusEnumMap = {
  AuthenticationStatus.unknown: 'unknown',
  AuthenticationStatus.authenticated: 'authenticated',
  AuthenticationStatus.unauthenticated: 'unauthenticated',
};

const _$RoleEnumMap = {
  Role.carOwner: 'carOwner',
  Role.driver: 'driver',
};
