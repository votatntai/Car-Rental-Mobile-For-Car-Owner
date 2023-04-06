import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:car_rental_for_car_owner/commons/constants/cars.dart';
import 'package:car_rental_for_car_owner/repositories/tracking_model.dart';
import 'package:signalr_netcore/signalr_client.dart';

class TrackingRepository {
  TrackingRepository() {}

  late HubConnection connection;
  final StreamController<TrackingModel> carLocationController =
      StreamController.broadcast();

  Future<void> connect() async {
    connection = HubConnectionBuilder().withUrl(socketUrl).build();

    await connection.start();
  }

  void startListening() {
    connection.on('ReceiveLocation', (arguments) {
      try {
        if (arguments != null) {
          final tracking =
              TrackingModel.fromJson(jsonDecode(arguments[1] as String));

          carLocationController.sink.add(tracking);
        }
      } catch (e) {
        log(e.toString());
      }
    });
  }
}
