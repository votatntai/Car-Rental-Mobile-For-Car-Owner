import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_result.freezed.dart';
part 'authentication_result.g.dart';

@freezed
class AuthenticationResult with _$AuthenticationResult {
  factory AuthenticationResult({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String token,
    required String refreshToken,
  }) = _AuthenticationResult;

  factory AuthenticationResult.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResultFromJson(json);
}
