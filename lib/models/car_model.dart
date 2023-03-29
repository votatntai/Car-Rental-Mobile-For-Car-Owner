import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

@freezed
class CarModel with _$CarModel {
  factory CarModel({
    required String id,
    required String name,
    required String transmissionType,
    required String fuelType,
    required String chassis,
    required int seater,
    required int yearOfManufacture,
    required String fuelConsumption,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
