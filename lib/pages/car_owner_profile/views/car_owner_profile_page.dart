import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile/bloc/car_owner_profile_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile/views/car_owner_profile_view.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerProfilePage extends StatelessWidget {
  const CarOwnerProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerProfileBloc(
        userRepository: getIt.get<UserRepository>(),
      )..add(
          const CarOwnerProfileEvent.started(),
        ),
      child: const CarOwnerProfileView(),
    );
  }
}
