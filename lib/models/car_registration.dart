import 'package:car_rental_for_car_owner/models/additional_charge.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/models/image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_registration.freezed.dart';
part 'car_registration.g.dart';

@freezed
class CarRegistration with _$CarRegistration {
  factory CarRegistration({
    required String id,
    String? name,
    required String licensePlate,
    required String transmissionType,
    required String fuelType,
    required int seater,
    required double price,
    required String fuelConsumption,
    required int yearOfManufacture,
    required String productionCompany,
    required String location,
    required String model,
    required String chassis,
    required DateTime createAt,
    String? description,
    required bool status,
    required CarOwner carOwner,
    required AdditionalCharge additionalCharge,
    List<ImageModel>? images,
    // List<Null> calendars,
  }) = _CarRegistration;

  factory CarRegistration.fromJson(Map<String, dynamic> json) =>
      _$CarRegistrationFromJson(json);
}
