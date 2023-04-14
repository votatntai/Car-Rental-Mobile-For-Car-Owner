import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/models/enums/transaction_type.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_transaction_detail/bloc/car_owner_transaction_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

class CarOwnerTransactionDetailView extends StatelessWidget {
  const CarOwnerTransactionDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarOwnerTransactionDetailBloc,
        CarOwnerTransactionDetailState>(
      builder: (context, state) {
        if (state.transaction == null) return const SizedBox();

        final transaction = state.transaction!;

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Chi tiết giao dịch',
            leading: true,
          ),
          body: Column(
            children: [
              Column(
                children: const [
                  SizedBox(
                    height: s08,
                  ),
                  Divider(
                    color: CustomColors.gainsboro,
                    thickness: 10,
                  ),
                  SizedBox(
                    height: s08,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(s08),
                child: Row(
                  children: [
                    const Text(
                      'Mã giao dịch',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      transaction.id,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(s08),
                child: Row(
                  children: [
                    const Text(
                      'Tổng số tiền',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      transaction.type.addOrRemove +
                          formatCurrency(
                            transaction.amount,
                          ),
                      style: TextStyle(
                        fontSize: 13,
                        color: transaction.type.color,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(s08),
                child: Row(
                  children: [
                    const Text(
                      'Loại giao dịch',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      transaction.type.displayName,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(s08),
                child: Row(
                  children: [
                    const Text(
                      'Thời gian',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      DateFormat('dd/MM/yyyy HH:mm')
                          .format(transaction.createAt),
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(s08),
                child: Row(
                  children: [
                    const Text(
                      'Chú thích',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: context.width() * 0.6,
                      child: Text(
                        transaction.description ?? '',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
