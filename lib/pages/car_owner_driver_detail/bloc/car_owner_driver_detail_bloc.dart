import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:car_rental_for_car_owner/repositories/driver_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_driver_detail_event.dart';
part 'car_owner_driver_detail_state.dart';
part 'car_owner_driver_detail_bloc.freezed.dart';

class CarOwnerDriverDetailBloc
    extends Bloc<CarOwnerDriverDetailEvent, CarOwnerDriverDetailState> {
  CarOwnerDriverDetailBloc({
    required this.driverRepository,
  }) : super(const CarOwnerDriverDetailState.initial()) {
    on<_Started>(_onStarted);
  }

  final DriverRepository driverRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerDriverDetailState> emit,
  ) async {
    emit(const CarOwnerDriverDetailState.loading());

    final driverResult = await driverRepository.driverById(event.driverId);
    if (driverResult is ApiError) {
      emit(CarOwnerDriverDetailState.failure(
          message: (driverResult as ApiError).error ?? ''));
      return;
    }

    final driver = (driverResult as ApiSuccess<Driver>).value;

    emit(CarOwnerDriverDetailState.success(
      driver: driver,
    ));
  }
}
