import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/commons/loading_dialog_service.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/models/update_car_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_car_detail_event.dart';
part 'car_owner_car_detail_state.dart';
part 'car_owner_car_detail_bloc.freezed.dart';

class CarOwnerCarDetailBloc
    extends Bloc<CarOwnerCarDetailEvent, CarOwnerCarDetailState> {
  CarOwnerCarDetailBloc({
    required this.carRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_StatusChanged>(_onStatusChanged);
  }

  final CarRepository carRepository;

  String? carId;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerCarDetailState> emit,
  ) async {
    if (event.carId == null) {
      emit(const CarOwnerCarDetailState.failure(message: 'Xe không tồn tại'));
      return;
    }

    carId = event.carId;

    final carResult = await carRepository.carById(event.carId!);

    if (carResult is ApiError) {
      emit(const CarOwnerCarDetailState.failure(message: 'Xe không tồn tại'));
      return;
    }

    final car = (carResult as ApiSuccess<Car>).value;

    emit(CarOwnerCarDetailState.success(car: car));
  }

  FutureOr<void> _onStatusChanged(
    _StatusChanged event,
    Emitter<CarOwnerCarDetailState> emit,
  ) async {
    if (carId == null) return;

    LoadingDialogService.load();

    final result = await carRepository.updateCar(
      id: carId!,
      model: UpdateCarModel(
        status: event.status,
      ),
    );

    LoadingDialogService.dispose();

    add(_Started(carId: carId!));
  }
}
