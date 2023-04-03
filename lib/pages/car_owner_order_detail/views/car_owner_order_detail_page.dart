import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_detail/bloc/car_owner_order_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_detail/views/car_owner_order_detail_view.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerOrderDetailPage extends StatelessWidget {
  const CarOwnerOrderDetailPage({super.key, this.order});

  final Order? order;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerOrderDetailBloc(
        orderRepository: getIt.get<OrderRepository>(),
      )..add(
          CarOwnerOrderDetailEvent.started(
            order: order,
          ),
        ),
      child: const CarOwnerOrderDetailView(),
    );
  }
}
