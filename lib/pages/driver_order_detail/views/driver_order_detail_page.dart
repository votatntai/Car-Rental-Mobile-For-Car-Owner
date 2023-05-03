import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_detail/bloc/driver_order_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_detail/views/driver_order_detail_view.dart';
import 'package:car_rental_for_car_owner/repositories/feedback_repository.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverOrderDetailPage extends StatelessWidget {
  const DriverOrderDetailPage({super.key, this.order});

  final Order? order;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DriverOrderDetailBloc(
        orderRepository: getIt.get<OrderRepository>(),
        feedbackRepository: getIt.get<FeedbackRepository>(),
      )..add(
          DriverOrderDetailEvent.started(
            order: order,
          ),
        ),
      child: const DriverOrderDetailView(),
    );
  }
}
