import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/commons/loading_dialog_service.dart';
import 'package:car_rental_for_car_owner/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_profile_detail_event.dart';
part 'driver_profile_detail_state.dart';
part 'driver_profile_detail_bloc.freezed.dart';

class DriverProfileDetailBloc
    extends Bloc<DriverProfileDetailEvent, DriverProfileDetailState> {
  DriverProfileDetailBloc({
    required this.userRepository,
  }) : super(const DriverProfileDetailState()) {
    on<_Started>(_onStarted);
    on<_Saved>(_onSaved);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<DriverProfileDetailState> emit,
  ) async {
    var driver = await userRepository.getDriver();
    emit(DriverProfileDetailState(driver: driver));
  }

  FutureOr<void> _onSaved(
    _Saved event,
    Emitter<DriverProfileDetailState> emit,
  ) async {
    if (state.driver == null) return;
    LoadingDialogService.load();

    final result = await userRepository.updateDriver(
      id: state.driver!.id,
      name: event.name,
      address: event.address,
      gender: event.gender,
      phone: event.phone,
    );

    LoadingDialogService.dispose();

    if (result is ApiError) {
      showMessageDialog(message: (result as ApiError).error);
    }

    if (result is ApiSuccess) {
      showMessageDialog(message: 'Cập nhập thành công');
    }
  }
}
