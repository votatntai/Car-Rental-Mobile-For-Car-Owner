import 'package:car_rental_for_car_owner/models/converters/transaction_type.dart';
import 'package:car_rental_for_car_owner/models/enums/transaction_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.g.dart';
part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    // required String userId,
    // required String driverId,
    // required String customerId,
    required DateTime createAt,
    @JsonKey(fromJson: transactionTypeFromJson) required TransactionType type,
    required double amount,
    String? description,
    String? status,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
