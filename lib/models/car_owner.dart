import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner.g.dart';
part 'car_owner.freezed.dart';

@freezed
class CarOwner with _$CarOwner {
  const factory CarOwner({
    required String id,
    required String name,
    String? address,
    required String phone,
    required String gender,
    String? avatarUrl,
    String? bankAccountNumber,
    required bool status,
    required bool isAutoAcceptOrder,
  }) = _CarOwner;

  factory CarOwner.fromJson(Map<String, dynamic> json) =>
      _$CarOwnerFromJson(json);
}
