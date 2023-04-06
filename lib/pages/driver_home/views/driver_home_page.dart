import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/bloc/driver_home_bloc.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/views/driver_home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({Key? key}) : super(key: key);

  @override
  State<DriverHomePage> createState() => _DriverHomePageState();
}

class _DriverHomePageState extends State<DriverHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DriverHomeBloc(
        orderRepository: getIt.get<OrderRepository>(),
      )..add(
          const DriverHomeEvent.started(),
        ),
      child: DriverHomeView(),
    );
  }
}
