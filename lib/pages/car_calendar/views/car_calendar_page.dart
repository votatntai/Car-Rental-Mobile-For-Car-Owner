import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_calendar/bloc/car_calendar_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_calendar/views/car_calendar_view.dart';
import 'package:car_rental_for_car_owner/repositories/calendar_repository.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarCalendarPage extends StatelessWidget {
  const CarCalendarPage({
    super.key,
    this.carId,
  });

  final String? carId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarCalendarBloc(
        calendarRepository: getIt.get<CalendarRepository>(),
        carRepository: getIt.get<CarRepository>(),
      )..add(
          CarCalendarEvent.started(
            carId: carId,
          ),
        ),
      child: const CarCalendarView(),
    );
  }
}
