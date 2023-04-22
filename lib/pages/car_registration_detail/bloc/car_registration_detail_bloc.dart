import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car_registration.dart';
import 'package:car_rental_for_car_owner/repositories/car_registration_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_registration_detail_event.dart';
part 'car_registration_detail_state.dart';
part 'car_registration_detail_bloc.freezed.dart';

class CarRegistrationDetailBloc
    extends Bloc<CarRegistrationDetailEvent, CarRegistrationDetailState> {
  CarRegistrationDetailBloc({
    required this.carRegistrationRepository,
  }) : super(const CarRegistrationDetailState()) {
    on<_Started>(_onStarted);
  }

  final CarRegistrationRepository carRegistrationRepository;

  FutureOr<void> _onStarted(
    event,
    Emitter<CarRegistrationDetailState> emit,
  ) async {
    final carRegistrationResult =
        await carRegistrationRepository.getCarRegistrationById(
      event.id,
    );

    if (carRegistrationResult is ApiError) {
      return;
    }

    final carRegistration =
        (carRegistrationResult as ApiSuccess<CarRegistration>).value;

    emit(state.copyWith(carRegistration: carRegistration));
  }
}
