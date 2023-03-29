import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:car_rental_for_car_owner/models/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail.freezed.dart';
part 'order_detail.g.dart';

@freezed
class OrderDetail with _$OrderDetail {
  factory OrderDetail({
    required String id,
    required Car car,
    Location? deliveryLocation,
    Location? pickupLocation,
    required DateTime deliveryTime,
    required DateTime pickupTime,
    Driver? driver,
  }) = _OrderDetail;

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);
}
