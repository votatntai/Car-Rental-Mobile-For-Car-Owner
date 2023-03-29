import 'package:car_rental_for_car_owner/models/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_feature.freezed.dart';
part 'car_feature.g.dart';

@freezed
class CarFeature with _$CarFeature {
  factory CarFeature({
    String? description,
    required Feature feature,
  }) = _CarFeature;

  factory CarFeature.fromJson(Map<String, dynamic> json) =>
      _$CarFeatureFromJson(json);
}
