import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_history/bloc/car_owner_order_history_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_history/views/car_owner_order_history_view.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerOrderHistoryPage extends StatelessWidget {
  const CarOwnerOrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerOrderHistoryBloc(
        orderRepository: getIt.get<OrderRepository>(),
      )..add(
          const CarOwnerOrderHistoryEvent.started(),
        ),
      child: const CarOwnerOrderHistoryView(),
    );
  }
}
