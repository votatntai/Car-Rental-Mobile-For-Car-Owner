import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FCMTokenRepository {
  FCMTokenRepository({
    required this.dio,
  });

  final Dio dio;

  Future<void> addFcmToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null) return;

    try {
      await dio.post<dynamic>(
        '/device-tokens',
        data: {
          'deviceToken': fcmToken,
        },
      );
    } on DioError catch (e) {
      log(e.toString());
    }

    return;
  }
}
