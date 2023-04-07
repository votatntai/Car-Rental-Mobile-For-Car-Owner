import 'package:car_rental_for_car_owner/pages/car_registration/bloc/car_registration_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/views/car_registration_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarRegistrationPage extends StatelessWidget {
  const CarRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarRegistrationBloc()
        ..add(
          const CarRegistrationEvent.started(),
        ),
      child: const CarRegistrationView(),
    );
  }
}
