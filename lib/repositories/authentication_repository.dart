import 'dart:async';

import 'package:car_rental_for_car_owner/commons/constants/authentication.dart';
import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/auth_data.dart';
import 'package:car_rental_for_car_owner/models/authentication_result.dart';
import 'package:car_rental_for_car_owner/models/enums/gender.dart';
import 'package:car_rental_for_car_owner/models/enums/role.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationRepository {
  AuthenticationRepository({
    required this.dio,
    required this.sharedPreferences,
  });

  final Dio dio;
  final SharedPreferences sharedPreferences;

  final StreamController<AuthData> _authenticationController =
      StreamController<AuthData>.broadcast();

  Stream<AuthData> get status async* {
    final token = sharedPreferences.getString(accessTokenRefs);
    final role = sharedPreferences.getString(roleRefs);
    if (token != null && token.isNotEmpty && role != null && role.isNotEmpty) {
      yield AuthData(
        status: AuthenticationStatus.authenticated,
        role: role.toRole(),
      );
    } else {
      yield AuthData(
        status: AuthenticationStatus.unauthenticated,
        role: Role.carOwner,
      );
    }

    yield* _authenticationController.stream;
  }

  Future<ApiResponse<bool>> driverLogin(
      String username, String password) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        'auth/drivers',
        data: {
          'username': username.toLowerCase().trim(),
          'password': password.toLowerCase().trim(),
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final auth = AuthenticationResult.fromJson(result.data!);

        // save token
        await sharedPreferences.setString(accessTokenRefs, auth.token);
        await sharedPreferences.setString(roleRefs, Role.driver.name);

        // update auth status
        _authenticationController.add(AuthData(
          status: AuthenticationStatus.authenticated,
          role: Role.driver,
        ));

        return const ApiResponse.success(true);
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<bool>> carOwnerLogin(
      String username, String password) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        'auth/car-owners',
        data: {
          'username': username.toLowerCase().trim(),
          'password': password.toLowerCase().trim(),
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final auth = AuthenticationResult.fromJson(result.data!);

        // save token
        await sharedPreferences.setString(accessTokenRefs, auth.token);
        await sharedPreferences.setString(roleRefs, Role.carOwner.name);

        // update auth status
        _authenticationController.add(AuthData(
          status: AuthenticationStatus.authenticated,
          role: Role.carOwner,
        ));

        return const ApiResponse.success(true);
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<bool>> carOwnerSignUp({
    required String username,
    required String password,
    required String name,
    required String phone,
    required Gender gender,
    String? address,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        'car-owners',
        data: {
          'username': username.toLowerCase().trim(),
          'password': password.toLowerCase().trim(),
          'name': name,
          'phone': phone,
          'gender': gender.getDisplayName(),
          'address': address,
        },
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        return await carOwnerLogin(username, password);
      }

      return const ApiError(error: 'Unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<void> logOut() async {
    _authenticationController.add(AuthData(
      status: AuthenticationStatus.unauthenticated,
      role: Role.carOwner,
    ));

    await sharedPreferences.setString(accessTokenRefs, '');
    await sharedPreferences.setString(
      refreshTokenRefs,
      '',
    );

    await sharedPreferences.setString(roleRefs, '');
  }

  Future<void> dispose() async {
    await _authenticationController.close();
  }
}
