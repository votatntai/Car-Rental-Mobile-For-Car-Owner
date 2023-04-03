import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_tracking_event.dart';
part 'car_tracking_state.dart';
part 'car_tracking_bloc.freezed.dart';

class CarTrackingBloc extends Bloc<CarTrackingEvent, CarTrackingState> {
  CarTrackingBloc({
    required this.carRepository,
    required this.userRepository,
  }) : super(const CarTrackingState(
          myCars: [],
          selectedCars: [],
        )) {
    on<_Started>(_onStarted);
    on<_SelectedCarsChanged>(_onSelectedCarsChanged);
  }

  final CarRepository carRepository;
  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarTrackingState> emit,
  ) async {
    final carOwner = await userRepository.getCarOwner();

    if (carOwner == null) {
      return;
    }

    final myCarsResult = await carRepository.myCars(
      carOwnerId: carOwner.id,
    );

    if (myCarsResult is ApiError) {
      return;
    }

    final myCars = (myCarsResult as ApiSuccess).value;

    final selectedCars =
        myCars.where((car) => event.carIds.contains(car.id)).toList();

    emit(
      state.copyWith(
        myCars: myCars,
        selectedCars: selectedCars,
      ),
    );
  }

  FutureOr<void> _onSelectedCarsChanged(
    _SelectedCarsChanged event,
    Emitter<CarTrackingState> emit,
  ) {
    emit(
      state.copyWith(
        selectedCars: event.selectedCars,
      ),
    );
  }
}
