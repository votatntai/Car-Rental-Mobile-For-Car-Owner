import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_list/bloc/car_registration_list_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_list/views/car_registration_list_view.dart';
import 'package:car_rental_for_car_owner/repositories/car_registration_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarRegistrationListPage extends StatelessWidget {
  const CarRegistrationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarRegistrationListBloc(
        carRegistrationRepository: getIt<CarRegistrationRepository>(),
        userRepository: getIt<UserRepository>(),
      )..add(
          const CarRegistrationListEvent.started(),
        ),
      child: const CarRegistrationListView(),
    );
  }
}
