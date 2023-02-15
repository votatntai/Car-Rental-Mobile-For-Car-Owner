import 'dart:async';

import 'package:car_rental_for_customer/commons/constants/constants.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/authentication_result.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository({
    required this.dio,
    required this.sharedPreferences,
  });

  final Dio dio;
  final SharedPreferences sharedPreferences;

  final StreamController<AuthenticationStatus> _authenticationController =
      StreamController<AuthenticationStatus>.broadcast();

  Stream<AuthenticationStatus> get status async* {
    final token = sharedPreferences.getString(accessTokenRefs);
    if (token != null && token.isNotEmpty) {
      yield AuthenticationStatus.authenticated;
    } else {
      yield AuthenticationStatus.unauthenticated;
    }

    yield* _authenticationController.stream;
  }

  Future<ApiResponse<bool>> login(String username, String password) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: {
          'username': username.toLowerCase().trim(),
          'password': password.toLowerCase().trim(),
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final auth = AuthenticationResult.fromJson(result.data!);

        // save token
        await sharedPreferences.setString(accessTokenRefs, auth.token);
        await sharedPreferences.setString(
          refreshTokenRefs,
          auth.refreshToken,
        );

        // update auth status
        _authenticationController.add(AuthenticationStatus.authenticated);

        return const ApiResponse.success(true);
      }

      return const ApiError(error: 'Unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<bool>> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? address,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        '/auth/register',
        data: {
          'firstName': firstName.trim(),
          'lastName': lastName.trim(),
          'email': email.toLowerCase().trim(),
          'password': password.toLowerCase().trim(),
          'phoneNumber': phoneNumber?.toLowerCase().trim(),
          'address': address?.trim()
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final auth = AuthenticationResult.fromJson(result.data!);

        // save token
        await sharedPreferences.setString(accessTokenRefs, auth.token);
        await sharedPreferences.setString(
          refreshTokenRefs,
          auth.refreshToken,
        );

        // update auth status
        _authenticationController.add(AuthenticationStatus.authenticated);

        return const ApiResponse.success(true);
      }

      return const ApiError(error: 'Unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<bool>> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      final result = await dio.put<dynamic>(
        '/auth/change-password',
        data: {
          'password': currentPassword,
          'newPassword': newPassword,
        },
      );
      if (result.data != null &&
          result.statusCode == StatusCodes.status204NoContent) {
        return const ApiResponse.success(true);
      }

      return const ApiError(error: 'Unknown error');
    } on DioError catch (e) {
      if (e.response?.statusCode == StatusCodes.status400BadRequest) {
        return const ApiResponse.error(error: 'Invalid password');
      } else {
        return e.getErrorMessage();
      }
    }
  }

  Future<void> logOut() async {
    await sharedPreferences.setString(accessTokenRefs, '');
    await sharedPreferences.setString(
      refreshTokenRefs,
      '',
    );
    _authenticationController.add(AuthenticationStatus.unauthenticated);
  }

  Future<void> dispose() async {
    await _authenticationController.close();
  }
}
