import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/bloc/car_owner_car_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/views/car_owner_car_detail_view.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerCarDetailPage extends StatelessWidget {
  const CarOwnerCarDetailPage({super.key, this.carId});

  final String? carId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerCarDetailBloc(
        carRepository: getIt.get<CarRepository>(),
      )..add(
          CarOwnerCarDetailEvent.started(
            carId: carId,
          ),
        ),
      child: const CarOwnerCarDetailView(),
    );
  }
}
