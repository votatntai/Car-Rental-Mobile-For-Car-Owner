import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_location_model.freezed.dart';

@freezed
class CarLocationModel with _$CarLocationModel {
  factory CarLocationModel({
    required Car car,
    required double latitude,
    required double longitude,
  }) = _CarLocationModel;
}
