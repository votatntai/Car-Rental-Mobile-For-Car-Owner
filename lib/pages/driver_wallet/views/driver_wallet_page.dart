import 'package:car_rental_for_car_owner/app/bloc/authentication_bloc.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/driver_wallet/bloc/driver_wallet_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_wallet/views/driver_wallet_view.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:car_rental_for_car_owner/repositories/wallet_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverWalletPage extends StatelessWidget {
  const DriverWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return BlocProvider.value(
          value: DriverWalletBloc(
            transactionRepository: getIt.get<TransactionRepository>(),
            walletRepository: getIt.get<WalletRepository>(),
            userRepository: getIt.get<UserRepository>(),
          )..add(
              const DriverWalletEvent.started(),
            ),
          child: const DriverWalletView(),
        );
      },
    );
  }
}
