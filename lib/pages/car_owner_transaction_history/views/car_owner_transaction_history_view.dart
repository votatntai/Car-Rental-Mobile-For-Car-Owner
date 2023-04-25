import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/models/transaction.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_transaction_history/bloc/car_owner_transaction_history_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_wallet/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CarOwnerTransactionHistoryView extends StatefulWidget {
  const CarOwnerTransactionHistoryView({Key? key}) : super(key: key);

  @override
  State<CarOwnerTransactionHistoryView> createState() =>
      _CarOwnerTransactionHistoryViewState();
}

class _CarOwnerTransactionHistoryViewState
    extends State<CarOwnerTransactionHistoryView> {
  final PagingController<int, Transaction> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<CarOwnerTransactionHistoryBloc>()
          .add(CarOwnerTransactionHistoryEvent.pageRequested(pageKey: pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CarOwnerTransactionHistoryBloc,
        CarOwnerTransactionHistoryState>(
      listener: (context, state) {
        final scrollPagination = state.scrollPagination;
        if (scrollPagination != null) {
          _pagingController.value = PagingState(
            nextPageKey: scrollPagination.nextPageKey,
            error: scrollPagination.error,
            itemList: scrollPagination.itemList,
          );
        }
      },
      child: Scaffold(
        appBar: appAppBar(
          context,
          titleText: 'Lịch sử giao dịch',
          leading: true,
        ),
        body: RefreshIndicator(
          onRefresh: () => Future.sync(
            () => _pagingController.refresh(),
          ),
          child: Container(
            padding: const EdgeInsets.all(s08),
            child: Column(
              children: [
                Expanded(
                  child: PagedListView(
                    scrollDirection: Axis.vertical,
                    builderDelegate: PagedChildBuilderDelegate<Transaction>(
                      animateTransitions: true,
                      noItemsFoundIndicatorBuilder: (context) {
                        return Column(
                          children: const [
                            Text(
                              'Không có giao dịch nào',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      },
                      itemBuilder: (context, item, index) => TransactionItem(
                        transaction: item,
                        onTap: (transaction) {
                          context.pushNamed(
                            RouteName.carOwnerTransactionDetail,
                            queryParams: {
                              'transaction-id': transaction.id,
                            },
                          );
                        },
                      ),
                    ),
                    pagingController: _pagingController,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
