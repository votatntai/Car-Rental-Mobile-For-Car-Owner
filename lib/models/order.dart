import 'package:car_rental_for_car_owner/models/customer.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/models/order_detail.dart';
import 'package:car_rental_for_car_owner/models/promotion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required String id,
    required Customer customer,
    OrderDetail? orderDetail,
    required DateTime rentalTime,
    required double amount,
    required bool isPaid,
    required OrderStatus status,
    String? description,
    required DateTime createdAt,
    Promotion? promotion,
    required DateTime startTime,
    required DateTime endTime,
    required double rentalUnitPrice,
    required double deliveryCost,
    required double deposit,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
