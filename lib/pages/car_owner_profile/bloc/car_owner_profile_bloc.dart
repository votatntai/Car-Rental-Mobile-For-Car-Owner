import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_profile_event.dart';
part 'car_owner_profile_state.dart';
part 'car_owner_profile_bloc.freezed.dart';

class CarOwnerProfileBloc
    extends Bloc<CarOwnerProfileEvent, CarOwnerProfileState> {
  CarOwnerProfileBloc({
    required this.userRepository,
  }) : super(const CarOwnerProfileState()) {
    on<_Started>(_onStarted);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerProfileState> emit,
  ) async {
    final carOwner = await userRepository.getCarOwner();
    emit(CarOwnerProfileState(
      carOwner: carOwner,
    ));
  }
}
