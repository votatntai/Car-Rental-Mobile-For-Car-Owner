import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  @JsonValue('Male')
  male,
  @JsonValue('Female')
  female,
  @JsonValue('Other')
  other,
}
