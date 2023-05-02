import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/repositories/car_owner_repository.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_detail_event.dart';
part 'car_owner_detail_state.dart';
part 'car_owner_detail_bloc.freezed.dart';

class CarOwnerDetailBloc
    extends Bloc<CarOwnerDetailEvent, CarOwnerDetailState> {
  CarOwnerDetailBloc({
    required this.carOwnerRepository,
    required this.carRepository,
  }) : super(const CarOwnerDetailState.initial()) {
    on<_Started>(_onStarted);
  }

  final CarOwnerRepository carOwnerRepository;
  final CarRepository carRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerDetailState> emit,
  ) async {
    emit(const CarOwnerDetailState.loading());

    final carOwnerResult =
        await carOwnerRepository.carOwnerById(event.carOwnerId);

    if (carOwnerResult is ApiError) {
      emit(const CarOwnerDetailState.failure(message: 'Lỗi không xác định'));

      return;
    }

    final carOwner = (carOwnerResult as ApiSuccess<CarOwner>).value;
    emit(CarOwnerDetailState.success(
      carOwner: carOwner,
      cars: [],
    ));

    final carResult = await carRepository.carByCarOwner(
      carOwnerId: carOwner.id,
    );

    if (carResult is ApiSuccess) {
      final cars = (carResult as ApiSuccess<List<Car>>).value;
      emit(CarOwnerDetailState.success(
        carOwner: carOwner,
        cars: cars,
      ));
    }
  }
}
