import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/bloc/car_owner_home_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/views/car_owner_home_view.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/order_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerHomePage extends StatelessWidget {
  const CarOwnerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerHomeBloc(
        carRepository: getIt.get<CarRepository>(),
        orderRepository: getIt.get<OrderRepository>(),
      )..add(
          const CarOwnerHomeEvent.started(),
        ),
      child: const CarOwnerHomeView(),
    );
  }
}