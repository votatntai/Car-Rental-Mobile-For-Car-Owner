import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/auth_data.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_profile_event.dart';
part 'driver_profile_state.dart';
part 'driver_profile_bloc.freezed.dart';

class DriverProfileBloc extends Bloc<DriverProfileEvent, DriverProfileState> {
  DriverProfileBloc({
    required this.userRepository,
  }) : super(const DriverProfileState()) {
    on<_Started>(_onStarted);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<DriverProfileState> emit,
  ) async {
    final driver = await userRepository.getDriver();
    emit(DriverProfileState(
      driver: driver,
    ));
  }
}
