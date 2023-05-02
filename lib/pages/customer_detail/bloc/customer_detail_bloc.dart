import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/customer.dart';
import 'package:car_rental_for_car_owner/repositories/customer_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_detail_event.dart';
part 'customer_detail_state.dart';
part 'customer_detail_bloc.freezed.dart';

class CustomerDetailBloc
    extends Bloc<CustomerDetailEvent, CustomerDetailState> {
  CustomerDetailBloc({required this.customerRepository})
      : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final CustomerRepository customerRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CustomerDetailState> emit,
  ) async {
    emit(const CustomerDetailState.loading());

    final customer = await customerRepository.customerById(event.customerId);

    if (customer == null) {
      emit(const CustomerDetailState.failure(message: 'Lỗi không xác định'));
      return;
    }

    emit(CustomerDetailState.success(
      customer: customer,
    ));
  }
}
