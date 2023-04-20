import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/calendar.dart';
import 'package:car_rental_for_car_owner/models/enums/weekday.dart';
import 'package:car_rental_for_car_owner/repositories/calendar_repository.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/models/car_calendar.dart';
import 'package:car_rental_for_car_owner/repositories/models/update_car_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_calendar_event.dart';
part 'car_calendar_state.dart';
part 'car_calendar_bloc.freezed.dart';

class CarCalendarBloc extends Bloc<CarCalendarEvent, CarCalendarState> {
  CarCalendarBloc({
    required this.calendarRepository,
    required this.carRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_UpdateCalendar>(_onUpdateCalendar);
  }

  final CalendarRepository calendarRepository;
  final CarRepository carRepository;

  String? carId;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarCalendarState> emit,
  ) async {
    emit(const _Loading());

    if (event.carId == null) {
      emit(const CarCalendarState.failure(message: 'Lỗi không xác định'));
      return;
    }

    carId = event.carId;

    final carCalendarResult =
        await calendarRepository.carCalendar(carId: event.carId!);

    if (carCalendarResult is ApiError) {
      emit(const CarCalendarState.failure(message: 'Lỗi không xác định'));
      return;
    }

    final carCalendars =
        (carCalendarResult as ApiSuccess<List<Calendar>>).value;
    final calendars = <Calendar>[];

    for (final weekday in Weekday.values) {
      // find calendar
      final calendar = carCalendars.firstWhere(
        (element) => element.weekday == weekday,
        orElse: () => Calendar(
          id: weekday.name,
          weekday: weekday,
          startTime: const TimeOfDay(
            hour: 0,
            minute: 0,
          ),
          endTime: const TimeOfDay(
            hour: 0,
            minute: 0,
          ),
        ),
      );

      calendars.add(calendar);
    }

    calendars.sort(
      (a, b) => a.weekday.index.compareTo(b.weekday.index),
    );

    emit(
      CarCalendarState.success(
        calendars: calendars,
      ),
    );
  }

  FutureOr<void> _onUpdateCalendar(
    _UpdateCalendar event,
    Emitter<CarCalendarState> emit,
  ) async {
    if (state is! _Success) {
      return;
    }

    final currentState = state as _Success;
    List<Calendar> calendars = currentState.calendars;
    calendars = calendars
        .where(
          (calendar) => calendar.id != event.calendar.id,
        )
        .toList();
    calendars.add(event.calendar);

    calendars.sort(
      (a, b) => a.weekday.index.compareTo(b.weekday.index),
    );

    emit(
      CarCalendarState.success(
        calendars: calendars,
      ),
    );

    if (carId == null) {
      return;
    }

    final carCalendars = calendars
        .map(
          (e) => CarCalendar(
            description: '',
            calendar: e,
          ),
        )
        .toList();

    await carRepository.updateCar(
      id: carId!,
      model: UpdateCarModel(carCalendars: carCalendars),
    );
  }
}
