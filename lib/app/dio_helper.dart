import 'package:car_rental_for_customer/commons/constants/authentication.dart';
import 'package:car_rental_for_customer/repositories/authentication_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioHelper {
  DioHelper({
    required this.dio,
    required this.authenticationRepository,
    required BaseOptions options,
    required this.sharedPreferences,
  }) : tokenDio = Dio(options);

  final Dio dio;
  final Dio tokenDio;
  final AuthenticationRepository authenticationRepository;
  final SharedPreferences sharedPreferences;
  String token = '';

  String get bearerToken => 'Bearer $token';

  Future<void> initDioInterceptors() async {
    token = sharedPreferences.getString(accessTokenRefs) ?? '';

    dio.interceptors.clear();

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = bearerToken;

          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final options = error.response!.requestOptions;

            if (bearerToken != options.headers['Authorization'].toString()) {
              options.headers['Authorization'] = bearerToken;

              //repeat
              try {
                final response = await dio.fetch<dynamic>(options);
                handler.resolve(response);
              } on DioError catch (e) {
                handler.reject(e);
              }

              return;
            }

            final refreshTokenData =
                sharedPreferences.getString(refreshTokenRefs) ?? '';
            if (refreshTokenData.isNotEmpty) {
              try {
                final data = await tokenDio.post<dynamic>(
                  '/auth/refresh-token',
                  data: {'refreshToken': refreshTokenData},
                );

                // ignore: avoid_dynamic_calls
                final accessToken = data.data['token'] as String;
                // ignore: avoid_dynamic_calls
                final refreshToken = data.data['refreshToken'] as String;

                await sharedPreferences.setString(accessTokenRefs, accessToken);
                await sharedPreferences.setString(
                  refreshTokenRefs,
                  refreshToken,
                );
                token = accessToken;
                options.headers['Authorization'] = bearerToken;

                if (kDebugMode) {
                  print(bearerToken);
                  print('Path: ${options.path}');
                }

                //repeat
                try {
                  final response = await dio.fetch<dynamic>(options);
                  handler.resolve(response);
                } on DioError catch (e) {
                  handler.reject(e);
                }

                return;
              } on DioError catch (e) {
                if (kDebugMode) {
                  print('refreshTokenError: $e');
                }
                // logout
                await authenticationRepository.logOut();
              }
            } else {
              // logout
              await authenticationRepository.logOut();
            }
          }
          handler.next(error);
          return;
        },
      ),
    );
  }

  void removeDioInterceptors() {
    dio.interceptors.clear();
  }
}
