import 'package:car_rental_for_car_owner/models/type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_type.freezed.dart';
part 'car_type.g.dart';

@freezed
class CarType with _$CarType {
  factory CarType({
    required TypeModel type,
    String? description,
  }) = _CarType;

  factory CarType.fromJson(Map<String, dynamic> json) =>
      _$CarTypeFromJson(json);
}
