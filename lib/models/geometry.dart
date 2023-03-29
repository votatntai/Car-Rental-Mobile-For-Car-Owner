import 'package:car_rental_for_car_owner/models/map_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    required MapLocation location,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}
