import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/driver_notification/bloc/driver_notification_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_notification/views/driver_notification_view.dart';
import 'package:car_rental_for_car_owner/repositories/notification_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverNotificationPage extends StatelessWidget {
  const DriverNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DriverNotificationBloc(
        notificationRepository: getIt.get<NotificationRepository>(),
      )..add(const DriverNotificationEvent.started()),
      child: const DriverNotificationView(),
    );
  }
}
