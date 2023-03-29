import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_notification/bloc/car_owner_notification_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_notification/views/car_owner_notification_view.dart';
import 'package:car_rental_for_car_owner/repositories/notification_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerNotificationPage extends StatelessWidget {
  const CarOwnerNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerNotificationBloc(
        notificationRepository: getIt.get<NotificationRepository>(),
      )..add(
          const CarOwnerNotificationEvent.started(),
        ),
      child: const CarOwnerNotificationView(),
    );
  }
}
