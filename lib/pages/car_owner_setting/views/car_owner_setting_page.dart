import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_setting/bloc/car_owner_setting_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_setting/views/car_owner_setting_view.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerSettingPage extends StatelessWidget {
  const CarOwnerSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerSettingBloc(
        userRepository: getIt.get<UserRepository>(),
      )..add(
          const CarOwnerSettingEvent.started(),
        ),
      child: const CarOwnerSettingView(),
    );
  }
}
