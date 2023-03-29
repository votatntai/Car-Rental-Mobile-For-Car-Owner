import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/driver_wallet/bloc/driver_wallet_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_wallet/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class DriverWalletView extends StatelessWidget {
  const DriverWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverWalletBloc, DriverWalletState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Thanh toán',
            leading: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(s08),
                  child: Card(
                    color: CustomColors.flamingo,
                    elevation: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: s24),
                        const Text(
                          'Số dư ví',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: s08),
                        Text(
                          formatCurrency(
                            successState.balance,
                          ),
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: s32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: const [
                                Icon(
                                  Icons.add_card_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Nạp tiền',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.account_balance_wallet_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Rút tiền',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                // context.goNamed(RouteName.transactionHistory);
                              },
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.history_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Lịch sử',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Giao dịch gần đây',
                      style: boldTextStyle(),
                    ),
                    TextButton(
                      onPressed: () {
                        // context.goNamed(RouteName.transactionHistory);
                      },
                      child: Text(
                        'Xem tất cả',
                        style: boldTextStyle(),
                      ),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16),
                ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: successState.transactions.length,
                  padding: const EdgeInsets.only(
                    left: 16,
                    bottom: 16,
                    right: 16,
                    top: 8,
                  ),
                  itemBuilder: (context, index) {
                    return TransactionItem(
                      transaction: successState.transactions[index],
                      onTap: (transaction) {
                        // context.goNamed(
                        //   RouteName.transactionDetail,
                        //   queryParams: {
                        //     'transaction-id': transaction.id,
                        //   },
                        // );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
