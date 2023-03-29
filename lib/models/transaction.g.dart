// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String,
      userId: json['userId'] as String,
      driverId: json['driverId'] as String,
      customerId: json['customerId'] as String,
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'driverId': instance.driverId,
      'customerId': instance.customerId,
      'date': instance.date.toIso8601String(),
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'description': instance.description,
      'status': instance.status,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.refund: 'refund',
  TransactionType.payment: 'payment',
  TransactionType.withdrawal: 'withdrawal',
  TransactionType.deposit: 'deposit',
};
