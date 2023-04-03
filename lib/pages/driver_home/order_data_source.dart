import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class OrderDataSource extends CalendarDataSource {
  OrderDataSource(List<Order> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    final order = _getOrderData(index);
    if (order.orderDetails.isEmpty) return DateTime.now();
    return order.orderDetails.first.startTime;
  }

  @override
  DateTime getEndTime(int index) {
    final order = _getOrderData(index);
    if (order.orderDetails.isEmpty) return DateTime.now();
    return order.orderDetails.first.endTime;
  }

  @override
  String getSubject(int index) {
    return _getOrderData(index).customer.name;
  }

  @override
  Color getColor(int index) {
    return CustomColors.flamingo;
  }

  @override
  bool isAllDay(int index) {
    return false;
  }

  Order _getOrderData(int index) {
    final dynamic order = appointments![index];
    late final Order orderData;
    if (order is Order) {
      orderData = order;
    }

    return orderData;
  }
}
