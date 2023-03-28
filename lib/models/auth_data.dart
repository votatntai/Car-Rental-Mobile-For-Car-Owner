import 'package:car_rental_for_car_owner/models/enums/role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

@freezed
class AuthData with _$AuthData {
  factory AuthData({
    required AuthenticationStatus status,
    required Role role,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}
