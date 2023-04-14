import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_transaction_detail/bloc/car_owner_transaction_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_transaction_detail/views/car_owner_transaction_detail_view.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerTransactionDetailPage extends StatelessWidget {
  const CarOwnerTransactionDetailPage({
    Key? key,
    this.transactionId,
  }) : super(key: key);

  final String? transactionId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerTransactionDetailBloc(
        transactionRepository: getIt.get<TransactionRepository>(),
      )..add(
          CarOwnerTransactionDetailEvent.started(
            transactionId: transactionId ?? '',
          ),
        ),
      child: const CarOwnerTransactionDetailView(),
    );
  }
}
