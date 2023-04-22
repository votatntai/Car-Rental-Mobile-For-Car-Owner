import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/bloc/car_registration_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_detail/bloc/car_registration_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_detail/views/car_registration_detail_view.dart';
import 'package:car_rental_for_car_owner/repositories/car_registration_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarRegistrationDetailPage extends StatelessWidget {
  const CarRegistrationDetailPage({super.key, this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarRegistrationDetailBloc(
        carRegistrationRepository: getIt.get<CarRegistrationRepository>(),
      )..add(
          CarRegistrationDetailEvent.started(id: id),
        ),
      child: const CarRegistrationDetailView(),
    );
  }
}
