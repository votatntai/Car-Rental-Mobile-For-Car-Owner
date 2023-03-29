import 'package:car_rental_for_car_owner/app/dio_helper.dart';
import 'package:car_rental_for_car_owner/app/route/app_route.dart';
import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/repositories/notification_repository.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:car_rental_for_car_owner/repositories/repositories.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:car_rental_for_car_owner/repositories/wallet_repository.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> configDI() async {
  final appRoute = AppRoute();
  final sharedPreferences = await SharedPreferences.getInstance();

  final dioOptions = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: connectTimeout),
    receiveTimeout: const Duration(milliseconds: receiveTimeout),
    contentType: Headers.jsonContentType,
  );
  final dio = Dio(dioOptions);

  final authenticationRepository =
      AuthenticationRepository(dio: dio, sharedPreferences: sharedPreferences);

  final helper = DioHelper(
    dio: dio,
    authenticationRepository: authenticationRepository,
    sharedPreferences: sharedPreferences,
    options: dioOptions,
  );

  getIt
    ..registerSingleton<AppRoute>(appRoute)
    ..registerSingleton<SharedPreferences>(sharedPreferences)
    ..registerSingleton<Dio>(dio)
    ..registerSingleton<DioHelper>(helper)
    ..registerSingleton<AuthenticationRepository>(authenticationRepository)
    ..registerSingleton<UserRepository>(UserRepository(dio: dio))
    ..registerSingleton<NotificationRepository>(
        NotificationRepository(dio: dio))
    ..registerSingleton<TransactionRepository>(TransactionRepository(dio: dio))
    ..registerSingleton<WalletRepository>(WalletRepository(dio: dio))
    ..registerSingleton<OrderRepository>(OrderRepository(dio: dio));
}

void configureTimeago() {
  timeago.setLocaleMessages('vi', timeago.ViMessages());
}
