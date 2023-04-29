import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/feedback_list/bloc/feedback_list_bloc.dart';
import 'package:car_rental_for_car_owner/pages/feedback_list/views/feedback_list_view.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/feedback_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedbackListPage extends StatelessWidget {
  const FeedbackListPage({super.key, this.carId, this.driverId});

  final String? carId;
  final String? driverId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: FeedbackListBloc(
        feedbackRepository: getIt.get<FeedbackRepository>(),
        carRepository: getIt.get<CarRepository>(),
      )..add(
          FeedbackListEvent.started(
            carId: carId,
            driverId: driverId,
          ),
        ),
      child: const FeedbackListView(),
    );
  }
}
