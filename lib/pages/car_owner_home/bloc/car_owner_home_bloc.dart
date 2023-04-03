import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_home_event.dart';
part 'car_owner_home_state.dart';
part 'car_owner_home_bloc.freezed.dart';

class CarOwnerHomeBloc extends Bloc<CarOwnerHomeEvent, CarOwnerHomeState> {
  CarOwnerHomeBloc({
    required this.carRepository,
    required this.orderRepository,
    required this.userRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final CarRepository carRepository;
  final OrderRepository orderRepository;
  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerHomeState> emit,
  ) async {
    emit(const CarOwnerHomeState.loading());

    final carOwner = await userRepository.getCarOwner();

    if (carOwner == null) {
      emit(const CarOwnerHomeState.failure(message: 'Lỗi không xác định'));
      return;
    }

    final myCarsResult = await carRepository.myCars(carOwnerId: carOwner.id);
    final pendingOrdersResult = await orderRepository.pendingOrders();

    final myCars = <Car>[];
    final pendingOrders = <Order>[];

    if (myCarsResult is ApiSuccess) {
      myCars.addAll((myCarsResult as ApiSuccess<List<Car>>).value);
    }

    if (pendingOrdersResult is ApiSuccess) {
      pendingOrders
          .addAll((pendingOrdersResult as ApiSuccess<List<Order>>).value);
    }

    emit(CarOwnerHomeState.success(
      myCars: myCars,
      pendingOrders: pendingOrders,
    ));
  }
}
