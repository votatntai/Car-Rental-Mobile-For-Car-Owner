import 'package:car_rental_for_car_owner/pages/car_registration/models/additional_charge_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'car_registration_model.freezed.dart';
// part 'car_registration_model.g.dart';

@freezed
class CarRegistrationModel with _$CarRegistrationModel {
  factory CarRegistrationModel({
    required String name,
    required String licensePlate,
    required String transmissionType,
    required String fuelType,
    required String model,
    required int seater,
    required double price,
    required String fuelConsumption,
    required String chassis,
    required int yearOfManufacture,
    required String productionCompany,
    required String location,
    required String type,
    String? description,
    required AdditionalChargeModel additionalCharge,
    required List<XFile> images,
    required List<XFile> licenses,
  }) = _CarRegistrationModel;

  // factory CarRegistrationModel.fromJson(Map<String, dynamic> json) =>
  //     _$CarRegistrationModelFromJson(json);
}
