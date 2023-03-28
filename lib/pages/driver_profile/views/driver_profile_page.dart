import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/driver_profile/bloc/driver_profile_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_profile/views/driver_profile_view.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverProfilePage extends StatelessWidget {
  const DriverProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DriverProfileBloc(
        userRepository: getIt.get<UserRepository>(),
      )..add(const DriverProfileEvent.started()),
      child: const DriverProfileView(),
    );
  }
}
