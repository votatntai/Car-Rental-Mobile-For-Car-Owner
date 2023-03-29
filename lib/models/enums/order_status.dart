import 'package:flutter/material.dart';

enum OrderStatus {
  pending,
  accepted,
  rejected,
  cancelled,
  started,
  finished,
}

extension OrderStatusX on OrderStatus {
  String get displayName {
    switch (this) {
      case OrderStatus.pending:
        return 'Chờ duyệt yêu cầu';
      case OrderStatus.accepted:
        return 'Đã duyệt yêu cầu';
      case OrderStatus.rejected:
        return 'Đã từ chối';
      case OrderStatus.cancelled:
        return 'Đã hủy';
      case OrderStatus.started:
        return 'Khởi hành';
      case OrderStatus.finished:
        return 'Kết thúc';
    }
  }

  Color get displayColor {
    switch (this) {
      case OrderStatus.pending:
        return Colors.yellow;
      case OrderStatus.accepted:
        return Colors.green;
      case OrderStatus.rejected:
        return Colors.red;
      case OrderStatus.cancelled:
        return Colors.grey;
      case OrderStatus.started:
        return Colors.blue;
      case OrderStatus.finished:
        return Colors.purple;
    }
  }

  int get step {
    switch (this) {
      case OrderStatus.pending:
        return 0;
      case OrderStatus.accepted:
        return 1;
      case OrderStatus.rejected:
        return 1;
      case OrderStatus.cancelled:
        return 0;
      case OrderStatus.started:
        return 2;
      case OrderStatus.finished:
        return 3;
    }
  }
}
