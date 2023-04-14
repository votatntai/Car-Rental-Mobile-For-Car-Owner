import 'package:car_rental_for_car_owner/models/customer.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/models/order_detail.dart';
import 'package:car_rental_for_car_owner/models/promotion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();

  const factory Order({
    required String id,
    required Customer customer,
    required List<OrderDetail> orderDetails,
    required int rentalTime,
    required double amount,
    required double unitPrice,
    required double deliveryFee,
    required double deliveryDistance,
    required double deposit,
    required bool isPaid,
    required OrderStatus status,
    String? description,
    required DateTime createAt,
    Promotion? promotion,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  bool get hasDriver {
    if (orderDetails.isEmpty) {
      return false;
    }

    return orderDetails.first.driver != null;
  }

  String get hasDriverDisplay {
    if (hasDriver) {
      return 'Xe có tài xế';
    } else {
      return 'Xe tự lái';
    }
  }
}
