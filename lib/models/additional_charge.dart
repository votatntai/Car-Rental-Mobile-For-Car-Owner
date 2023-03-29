import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_charge.freezed.dart';
part 'additional_charge.g.dart';

@freezed
class AdditionalCharge with _$AdditionalCharge {
  factory AdditionalCharge({
    required String id,
    required int maximumDistance,
    required double distanceSurcharge,
    required double timeSurcharge,
  }) = _AdditionalCharge;

  factory AdditionalCharge.fromJson(Map<String, dynamic> json) =>
      _$AdditionalChargeFromJson(json);
}
