import 'package:car_rental_for_car_owner/commons/constants/authentication.dart';
import 'package:car_rental_for_car_owner/repositories/authentication_repository.dart';
import 'package:dio/dio.dart';
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
            await authenticationRepository.logOut();

            return;
          }
          handler.next(error);
          return;
        },
      ),
    );
  }

  void removeDioInterceptors() {
    token = '';
    dio.interceptors.clear();
  }
}
