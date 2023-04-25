import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/widgets/order_item.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_history/bloc/car_owner_order_history_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CarOwnerOrderHistoryView extends StatefulWidget {
  const CarOwnerOrderHistoryView({super.key});

  @override
  State<CarOwnerOrderHistoryView> createState() =>
      _CarOwnerOrderHistoryViewState();
}

class _CarOwnerOrderHistoryViewState extends State<CarOwnerOrderHistoryView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarOwnerOrderHistoryBloc, CarOwnerOrderHistoryState>(
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
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    return OrderItemForCarOwner(
                      order: successState.historyOrders[index],
                      onTap: (order) {
                        context.pushNamed(
                          RouteName.carOwnerOrderDetail,
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
