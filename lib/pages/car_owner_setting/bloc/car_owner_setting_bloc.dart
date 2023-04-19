import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_setting_event.dart';
part 'car_owner_setting_state.dart';
part 'car_owner_setting_bloc.freezed.dart';

class CarOwnerSettingBloc
    extends Bloc<CarOwnerSettingEvent, CarOwnerSettingState> {
  CarOwnerSettingBloc({
    required this.userRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_ChangeAutoAcceptOrder>(_onChangeAutoAcceptOrder);
  }

  final UserRepository userRepository;

  CarOwner? _carOwner;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerSettingState> emit,
  ) async {
    emit(const _Loading());

    final carOwner = await userRepository.getCarOwner();

    if (carOwner == null) {
      emit(const _Failure(message: 'Không tìm thấy thông tin người dùng'));
    }

    _carOwner = carOwner;

    emit(_Success(carOwner: carOwner!));
  }

  FutureOr<void> _onChangeAutoAcceptOrder(
    _ChangeAutoAcceptOrder event,
    Emitter<CarOwnerSettingState> emit,
  ) async {
    if (_carOwner != null) {
      final carOwner = await userRepository.updateCarOwner(
        id: _carOwner!.id,
        isAutoAcceptOrder: event.isAutoAcceptOrder,
        name: _carOwner?.name,
        address: _carOwner?.address,
        gender: _carOwner?.gender,
        phone: _carOwner?.phone,
      );

      if (carOwner != null) {
        emit(_Success(carOwner: carOwner));
      } else {
        add(const _Started());
      }
    }
  }
}
