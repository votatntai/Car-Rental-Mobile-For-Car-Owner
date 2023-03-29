import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car_owner.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/models/transaction.dart';
import 'package:car_rental_for_car_owner/models/wallet.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:car_rental_for_car_owner/repositories/wallet_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_wallet_event.dart';
part 'car_owner_wallet_state.dart';
part 'car_owner_wallet_bloc.freezed.dart';

class CarOwnerWalletBloc
    extends Bloc<CarOwnerWalletEvent, CarOwnerWalletState> {
  CarOwnerWalletBloc({
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
    Emitter<CarOwnerWalletState> emit,
  ) async {
    emit(const CarOwnerWalletState.loading());

    final carOwner = await userRepository.getCarOwner();
    if (carOwner == null) return;

    final transactionResult = await transactionRepository.transactions(
      pageNumber: 1,
      pageSize: 10,
    );

    final walletResult = await walletRepository.myWallet();
    if (walletResult is ApiError) {
      emit(
        CarOwnerWalletState.failure(
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

    emit(CarOwnerWalletState.success(
      carOwner: carOwner,
      transactions: transactions,
      balance: wallet.balance,
    ));
  }
}
