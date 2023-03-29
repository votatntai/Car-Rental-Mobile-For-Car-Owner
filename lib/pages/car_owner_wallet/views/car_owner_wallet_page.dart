import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_wallet/bloc/car_owner_wallet_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_wallet/views/car_owner_wallet_view.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:car_rental_for_car_owner/repositories/wallet_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerWalletPage extends StatelessWidget {
  const CarOwnerWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerWalletBloc(
        transactionRepository: getIt.get<TransactionRepository>(),
        walletRepository: getIt.get<WalletRepository>(),
        userRepository: getIt.get<UserRepository>(),
      )..add(
          const CarOwnerWalletEvent.started(),
        ),
      child: const CarOwnerWalletView(),
    );
  }
}
