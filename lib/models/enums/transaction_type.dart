import 'package:flutter/material.dart';

enum TransactionType {
  refund,
  payment,
  withdrawal,
  deposit,
}

extension TransactionTypeX on TransactionType {
  String get displayName {
    switch (this) {
      case TransactionType.refund:
        return 'Hoàn tiền';
      case TransactionType.payment:
        return 'Thanh toán';
      case TransactionType.withdrawal:
        return 'Rút tiền';
      case TransactionType.deposit:
        return 'Nạp tiền';
    }
  }

  Color get color {
    switch (this) {
      case TransactionType.refund:
        return Colors.green;
      case TransactionType.payment:
        return Colors.red;
      case TransactionType.withdrawal:
        return Colors.red;
      case TransactionType.deposit:
        return Colors.green;
    }
  }

  String get addOrRemove {
    switch (this) {
      case TransactionType.refund:
        return '+';
      case TransactionType.payment:
        return '-';
      case TransactionType.withdrawal:
        return '-';
      case TransactionType.deposit:
        return '+';
    }
  }
}
