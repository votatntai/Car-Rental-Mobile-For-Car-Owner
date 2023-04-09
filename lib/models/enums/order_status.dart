import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum OrderStatus {
  @JsonValue('Canceled')
  canceled,
  @JsonValue('Pending')
  pending,
  @JsonValue('ManagerConfirmed')
  managerConfirmed,
  @JsonValue('CarOwnerApproved')
  carOwnerApproved,
  @JsonValue('Paid')
  paid,
  @JsonValue('ReceivedTheCar')
  receivedTheCar,
  @JsonValue('ArrivedAtPickUpPoint')
  arrivedAtPickUpPoint,
  @JsonValue('ReceivedGuests')
  receivedGuests,
  @JsonValue('Ongoing')
  ongoing,

  @JsonValue('ReturnedTheCar')
  returnedTheCar,
  @JsonValue('Finished')
  finished
}

extension OrderStatusX on OrderStatus {
  String get displayName {
    switch (this) {
      case OrderStatus.canceled:
        return 'Từ chối';
      case OrderStatus.pending:
        return 'Chờ xác nhận';
      case OrderStatus.managerConfirmed:
        return 'Quản lý đã xác nhận';
      case OrderStatus.carOwnerApproved:
        return 'Chủ xe đã xác nhận';
      case OrderStatus.receivedTheCar:
        return 'Đã giao xe';
      case OrderStatus.arrivedAtPickUpPoint:
        return 'Đã đến điểm đón khách';
      case OrderStatus.receivedGuests:
        return 'Đã nhận khách';
      case OrderStatus.ongoing:
        return 'Đang di chuyển';
      case OrderStatus.paid:
        return 'Đã thanh toán';
      case OrderStatus.returnedTheCar:
        return 'Đã trả xe';
      case OrderStatus.finished:
        return 'Đã kết thúc';
    }
  }

  Color get displayColor {
    switch (this) {
      case OrderStatus.canceled:
        return Colors.red;
      case OrderStatus.pending:
        return Colors.orange;
      case OrderStatus.managerConfirmed:
        return Colors.orange;
      case OrderStatus.carOwnerApproved:
        return Colors.orange;
      case OrderStatus.receivedTheCar:
        return Colors.orange;
      case OrderStatus.arrivedAtPickUpPoint:
        return Colors.orange;
      case OrderStatus.receivedGuests:
        return Colors.orange;
      case OrderStatus.ongoing:
        return Colors.orange;
      case OrderStatus.paid:
        return Colors.green;
      case OrderStatus.returnedTheCar:
        return Colors.green;
      case OrderStatus.finished:
        return Colors.green;
    }
  }
}
