import 'package:car_rental_for_car_owner/models/geometry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    @JsonKey(name: 'place_id') required String placeId,
    @JsonKey(name: 'formatted_address') required String formattedAddress,
    required Geometry geometry,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
