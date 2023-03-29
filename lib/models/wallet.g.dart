// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      id: json['id'] as String,
      balance: (json['balance'] as num).toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'status': instance.status,
    };
