import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_driver_detail/bloc/car_owner_driver_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_driver_detail/views/car_owner_driver_detail_views.dart';
import 'package:car_rental_for_car_owner/repositories/driver_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerDriverDetailPage extends StatelessWidget {
  const CarOwnerDriverDetailPage({
    Key? key,
    required this.driverId,
  }) : super(key: key);

  final String driverId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerDriverDetailBloc(
        driverRepository: getIt.get<DriverRepository>(),
      )..add(
          CarOwnerDriverDetailEvent.started(
            driverId: driverId,
          ),
        ),
      child: const CarOwnerDriverDetailView(),
    );
  }
}
