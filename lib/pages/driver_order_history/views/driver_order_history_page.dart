import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_history/bloc/driver_order_history_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_history/views/driver_order_history_view.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverOrderHistoryPage extends StatelessWidget {
  const DriverOrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DriverOrderHistoryBloc(
        orderRepository: getIt.get<OrderRepository>(),
      )..add(
          const DriverOrderHistoryEvent.started(),
        ),
      child: const DriverOrderHistoryView(),
    );
  }
}
