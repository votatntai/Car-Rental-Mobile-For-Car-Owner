import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_transaction_history/bloc/car_owner_transaction_history_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_transaction_history/views/car_owner_transaction_history_view.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerTransactionHistoryPage extends StatelessWidget {
  const CarOwnerTransactionHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerTransactionHistoryBloc(
        transactionRepository: getIt.get<TransactionRepository>(),
      )..add(
          const CarOwnerTransactionHistoryEvent.started(),
        ),
      child: const CarOwnerTransactionHistoryView(),
    );
  }
}
