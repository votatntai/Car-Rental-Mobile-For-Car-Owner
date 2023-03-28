import 'package:car_rental_for_car_owner/models/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
class Driver with _$Driver {
  const factory Driver({
    required String id,
    required String name,
    required String? address,
    required String phone,
    required String gender,
    String? avatarUrl,
    String? bankAccountNumber,
    String? bankName,
    Location? location,
    required String status,
    required bool accountStatus,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}
