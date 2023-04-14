import 'package:car_rental_for_car_owner/models/enums/transaction_type.dart';

TransactionType transactionTypeFromJson(String value) {
  switch (value.toLowerCase()) {
    case 'deposit':
    case 'nạp tiền':
      return TransactionType.deposit;
    case 'rút tiền':
    case 'withdrawal':
      return TransactionType.withdrawal;
    case 'hoàn tiền':
    case 'refund':
      return TransactionType.refund;
    case 'thanh toán':
    case 'payment':
      return TransactionType.payment;

    default:
      return TransactionType.deposit;
  }
}
