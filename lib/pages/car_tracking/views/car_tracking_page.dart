import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_tracking/bloc/car_tracking_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_tracking/views/car_tracking_view.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/tracking_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarTrackingPage extends StatelessWidget {
  const CarTrackingPage({
    super.key,
    required this.carIds,
  });

  final List<String> carIds;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarTrackingBloc(
        carRepository: getIt.get<CarRepository>(),
        userRepository: getIt.get<UserRepository>(),
        trackingRepository: getIt.get<TrackingRepository>(),
      )..add(
          CarTrackingEvent.started(
            carIds: carIds,
          ),
        ),
      child: const CarTrackingView(),
    );
  }
}
