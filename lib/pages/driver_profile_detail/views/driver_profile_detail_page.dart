import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/driver_profile_detail/bloc/driver_profile_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_profile_detail/views/driver_profile_detail_view.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverProfileDetailPage extends StatelessWidget {
  const DriverProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:
          DriverProfileDetailBloc(userRepository: getIt.get<UserRepository>())
            ..add(
              const DriverProfileDetailEvent.started(),
            ),
      child: const DriverProfileDetailView(),
    );
  }
}
