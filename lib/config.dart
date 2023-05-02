import 'dart:async';
import 'dart:developer';

import 'package:car_rental_for_car_owner/app/dio_helper.dart';
import 'package:car_rental_for_car_owner/app/route/app_route.dart';
import 'package:car_rental_for_car_owner/commons/constants/maps.dart';
import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/firebase_options.dart';
import 'package:car_rental_for_car_owner/repositories/calendar_repository.dart';
import 'package:car_rental_for_car_owner/repositories/car_owner_repository.dart';
import 'package:car_rental_for_car_owner/repositories/car_registration_repository.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/customer_repository.dart';
import 'package:car_rental_for_car_owner/repositories/driver_repository.dart';
import 'package:car_rental_for_car_owner/repositories/fcm_token_repository.dart';
import 'package:car_rental_for_car_owner/repositories/feedback_repository.dart';
import 'package:car_rental_for_car_owner/repositories/maps_repository.dart';
import 'package:car_rental_for_car_owner/repositories/notification_repository.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:car_rental_for_car_owner/repositories/payment_repository.dart';
import 'package:car_rental_for_car_owner/repositories/repositories.dart';
import 'package:car_rental_for_car_owner/repositories/tracking_repository.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:car_rental_for_car_owner/repositories/wallet_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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

  final tracking = TrackingRepository();

  getIt
    ..registerSingleton(appRoute)
    ..registerSingleton(sharedPreferences)
    ..registerSingleton(dio)
    ..registerSingleton(helper)
    ..registerSingleton(authenticationRepository)
    ..registerSingleton(UserRepository(dio: dio))
    ..registerSingleton(NotificationRepository(dio: dio))
    ..registerSingleton(TransactionRepository(dio: dio))
    ..registerSingleton(WalletRepository(dio: dio))
    ..registerSingleton(OrderRepository(dio: dio))
    ..registerSingleton(
      MapsRepository(
        key: mapsApiKey,
        options: dioOptions,
        prefs: sharedPreferences,
      ),
    )
    ..registerSingleton(CarRepository(dio: dio))
    ..registerSingleton(DriverRepository(dio: dio))
    ..registerSingleton(CalendarRepository(dio: dio))
    ..registerSingleton(FCMTokenRepository(dio: dio))
    ..registerSingleton(tracking)
    ..registerSingleton(CarRegistrationRepository(dio: dio))
    ..registerSingleton(PaymentRepository(dio: dio))
    ..registerSingleton(FeedbackRepository(dio: dio))
    ..registerSingleton(CustomerRepository(dio: dio))
    ..registerSingleton(CarOwnerRepository(dio: dio));

  await tracking.connect();
}

void configureTimeago() {
  timeago.setLocaleMessages('vi', timeago.ViMessages());
}

mixin NotificationChannel {
  static const id = 'fcm_high_importance_channel';
  static const name = 'Default Channel';
  static const description = 'Default Channel';
}

mixin NotificationChannelGroup {
  static const id = 'fcm_high_importance_channel_group';
  static const name = 'Default Channel Group';
  static const description = 'Default Channel Group';
}

Future<void> configureNotification() async {
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.requestPermission();

  const initializationSettingsAndroid =
      AndroidInitializationSettings('ic_launcher');
  final initializationSettingsDarwin = DarwinInitializationSettings(
    onDidReceiveLocalNotification: (id, title, body, payload) {
      log('onDidReceiveLocalNotification: $id $title $body $payload');
    },
  );
  final initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwin,
  );
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (details) {
      log('onDidReceiveNotificationResponse: ${details.payload}');
    },
  );

  // create the group first
  const androidNotificationChannelGroup = AndroidNotificationChannelGroup(
    NotificationChannelGroup.id,
    NotificationChannelGroup.name,
    description: NotificationChannelGroup.description,
  );
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannelGroup(androidNotificationChannelGroup);

  // create channels associated with the group
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannel.id,
          NotificationChannel.name,
          groupId: NotificationChannelGroup.id,
          importance: Importance.max,
        ),
      );
}

final foregroundMessageStream = StreamController<RemoteMessage>.broadcast();
Future<void> configureFCM() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final messaging = FirebaseMessaging.instance;
  await messaging.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  //* show notification ion foreground
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  const androidNotificationDetails = AndroidNotificationDetails(
    NotificationChannel.id,
    NotificationChannel.name,
    importance: Importance.max,
    priority: Priority.high,
  );

  const notificationDetails =
      NotificationDetails(android: androidNotificationDetails);

  foregroundMessageStream.stream.listen((message) async {
    final notification = message.notification;
    final android = message.notification?.android;
    if (notification == null || android == null) return;

    await flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      notificationDetails,
    );
  });
}

Future<void> _handleForegroundMessage(RemoteMessage message) async {
  foregroundMessageStream.sink.add(message);
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  //todo: handle background message
}
