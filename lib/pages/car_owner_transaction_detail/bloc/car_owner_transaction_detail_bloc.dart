import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/transaction.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_transaction_detail_event.dart';
part 'car_owner_transaction_detail_state.dart';
part 'car_owner_transaction_detail_bloc.freezed.dart';

class CarOwnerTransactionDetailBloc extends Bloc<CarOwnerTransactionDetailEvent,
    CarOwnerTransactionDetailState> {
  CarOwnerTransactionDetailBloc({required this.transactionRepository})
      : super(const CarOwnerTransactionDetailState()) {
    on<_Started>(_onStarted);
  }

  final TransactionRepository transactionRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerTransactionDetailState> emit,
  ) async {
    final transactionResult = await transactionRepository.transactionById(
        transactionId: event.transactionId);

    if (transactionResult is ApiError) {
      return;
    }

    final transaction = (transactionResult as ApiSuccess<Transaction>).value;

    emit(CarOwnerTransactionDetailState(transaction: transaction));
  }
}
