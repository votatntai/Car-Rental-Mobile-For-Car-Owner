import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_location.freezed.dart';
part 'map_location.g.dart';

@freezed
class MapLocation with _$MapLocation {
  factory MapLocation({
    required double lat,
    required double lng,
  }) = _MapLocation;

  factory MapLocation.fromJson(Map<String, dynamic> json) =>
      _$MapLocationFromJson(json);
}
