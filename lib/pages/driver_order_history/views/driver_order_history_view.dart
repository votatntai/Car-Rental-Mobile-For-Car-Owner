import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/widgets/order_item.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_history/bloc/driver_order_history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DriverOrderHistoryView extends StatefulWidget {
  const DriverOrderHistoryView({super.key});

  @override
  State<DriverOrderHistoryView> createState() => _DriverOrderHistoryViewState();
}

class _DriverOrderHistoryViewState extends State<DriverOrderHistoryView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverOrderHistoryBloc, DriverOrderHistoryState>(
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
            titleText: 'Lịch sử',
            leading: false,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (successState.historyOrders.isEmpty)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Bạn chưa có đơn hàng nào',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    return OrderItemForDriver(
                      order: successState.historyOrders[index],
                      onTap: (order) {
                        context.pushNamed(
                          RouteName.driverOrderDetail,
                          extra: order,
                        );
                      },
                    );
                  },
                  itemCount: successState.historyOrders.length,
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
