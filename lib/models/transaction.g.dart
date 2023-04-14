// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      type: transactionTypeFromJson(json['type'] as String),
      amount: (json['amount'] as num).toDouble(),
      description: json['description'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt.toIso8601String(),
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
