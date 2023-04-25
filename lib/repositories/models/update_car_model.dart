import 'package:car_rental_for_car_owner/repositories/models/car_calendar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_car_model.freezed.dart';
part 'update_car_model.g.dart';

@freezed
class UpdateCarModel with _$UpdateCarModel {
  factory UpdateCarModel({
    List<CarCalendar>? carCalendars,
    String? status,
  }) = _UpdateCarModel;

  factory UpdateCarModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCarModelFromJson(json);
}
