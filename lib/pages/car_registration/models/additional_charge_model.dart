import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_charge_model.freezed.dart';
part 'additional_charge_model.g.dart';

@freezed
class AdditionalChargeModel with _$AdditionalChargeModel {
  factory AdditionalChargeModel({
    required int maximumDistance,
    required double distanceSurcharge,
    required double timeSurcharge,
    required double additionalDistance,
    required double additionalTime,
  }) = _AdditionalChargeModel;

  factory AdditionalChargeModel.fromJson(Map<String, dynamic> json) =>
      _$AdditionalChargeModelFromJson(json);
}
