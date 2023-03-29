import 'package:car_rental_for_car_owner/models/enums/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  factory Customer({
    required String id,
    required String name,
    required String phone,
    @JsonKey(fromJson: genderFromJson) required Gender gender,
    // required Wallet wallet,
    String? bankAccountNumber,
    String? bankName,
    String? avatarUrl,
    String? address,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
