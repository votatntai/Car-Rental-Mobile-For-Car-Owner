import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracking_model.freezed.dart';
part 'tracking_model.g.dart';

@freezed
class TrackingModel with _$TrackingModel {
  factory TrackingModel({
    @JsonKey(name: 'Latitude') required double latitude,
    @JsonKey(name: 'Longitude') required double longitude,
    @JsonKey(name: 'CarId') required String carId,
  }) = _TrackingModel;

  factory TrackingModel.fromJson(Map<String, dynamic> json) =>
      _$TrackingModelFromJson(json);
}
