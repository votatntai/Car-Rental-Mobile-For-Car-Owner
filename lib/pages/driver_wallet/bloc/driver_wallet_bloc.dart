import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/models/transaction.dart';
import 'package:car_rental_for_car_owner/models/wallet.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:car_rental_for_car_owner/repositories/wallet_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_wallet_event.dart';
part 'driver_wallet_state.dart';
part 'driver_wallet_bloc.freezed.dart';

class DriverWalletBloc extends Bloc<DriverWalletEvent, DriverWalletState> {
  DriverWalletBloc({
    required this.transactionRepository,
    required this.walletRepository,
    required this.userRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final TransactionRepository transactionRepository;
  final WalletRepository walletRepository;
  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<DriverWalletState> emit,
  ) async {
    emit(const DriverWalletState.loading());

    final driver = await userRepository.getDriver();
    if (driver == null) return;

    final transactionResult = await transactionRepository.transactions(
      pageNumber: 1,
      pageSize: 10,
    );

    final walletResult = await walletRepository.myWallet();
    if (walletResult is ApiError) {
      emit(
        DriverWalletState.failure(
          message: (walletResult as ApiError).error ?? '',
        ),
      );
      return;
    }

    final transactions = (transactionResult is ApiError)
        ? <Transaction>[]
        : (transactionResult as ApiSuccess<PaginationResult<Transaction>>)
            .value
            .data;

    final wallet = (walletResult as ApiSuccess<Wallet>).value;

    emit(DriverWalletState.success(
      driver: driver,
      transactions: transactions,
      balance: wallet.balance,
    ));
  }
}
