import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/commons/loading_dialog_service.dart';
import 'package:car_rental_for_car_owner/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_profile_detail_event.dart';
part 'car_owner_profile_detail_state.dart';
part 'car_owner_profile_detail_bloc.freezed.dart';

class CarOwnerProfileDetailBloc
    extends Bloc<CarOwnerProfileDetailEvent, CarOwnerProfileDetailState> {
  CarOwnerProfileDetailBloc({
    required this.userRepository,
  }) : super(const CarOwnerProfileDetailState()) {
    on<_Started>(_onStarted);
    on<_Saved>(_onSaved);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerProfileDetailState> emit,
  ) async {
    var carOwner = await userRepository.getCarOwner();
    emit(CarOwnerProfileDetailState(carOwner: carOwner));
  }

  FutureOr<void> _onSaved(
    _Saved event,
    Emitter<CarOwnerProfileDetailState> emit,
  ) async {
    if (state.carOwner == null) return;
    LoadingDialogService.load();

    final result = await userRepository.updateCarOwner(
      id: state.carOwner!.id,
      name: event.name,
      address: event.address,
      gender: event.gender,
      phone: event.phone,
      isAutoAcceptOrder: state.carOwner!.isAutoAcceptOrder,
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
