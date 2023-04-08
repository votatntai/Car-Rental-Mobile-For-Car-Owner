import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/models/car_registration.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/models/scroll_pagination.dart';
import 'package:car_rental_for_car_owner/repositories/car_registration_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_registration_list_event.dart';
part 'car_registration_list_state.dart';
part 'car_registration_list_bloc.freezed.dart';

class CarRegistrationListBloc
    extends Bloc<CarRegistrationListEvent, CarRegistrationListState> {
  CarRegistrationListBloc({
    required this.carRegistrationRepository,
    required this.userRepository,
  }) : super(const CarRegistrationListState()) {
    on<_Started>(_onStared);
    on<_PageRequested>(_onPageRequested);
  }

  final CarRegistrationRepository carRegistrationRepository;
  final UserRepository userRepository;

  // CarOwner? carOwner;

  FutureOr<void> _onStared(
    _Started event,
    Emitter<CarRegistrationListState> emit,
  ) async {
    emit(state.copyWith(
      scrollPagination: null,
    ));
    // carOwner = await userRepository.getCarOwner();
  }

  final pageSize = 10000;

  FutureOr<void> _onPageRequested(
    _PageRequested event,
    Emitter<CarRegistrationListState> emit,
  ) async {
    // final page = (event.pageKey / pageSize).floor() + 1;

    final carOwner = await userRepository.getCarOwner();

    final carRegistrationResult =
        await carRegistrationRepository.myCarRegistrations(
      carOwnerId: carOwner?.id ?? '',
      pageNumber: 1,
      pageSize: pageSize,
    );

    if (carRegistrationResult is ApiError) {
      emit(state.copyWith(
        scrollPagination: ScrollPagination<CarRegistration>(
          itemList: [],
          nextPageKey: null,
          error: (carRegistrationResult as ApiError).error ?? '',
        ),
      ));
      return;
    }

    final carRegistrationParsed =
        (carRegistrationResult as ApiSuccess<List<CarRegistration>>).value;

    emit(state.copyWith(
      scrollPagination: ScrollPagination(
        itemList: carRegistrationParsed,
        nextPageKey: null,
        error: null,
      ),
    ));
  }
}
