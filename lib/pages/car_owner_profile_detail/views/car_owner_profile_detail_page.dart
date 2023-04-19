import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile_detail/bloc/car_owner_profile_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile_detail/views/car_owner_profile_detail_view.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerProfileDetailPage extends StatelessWidget {
  const CarOwnerProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:
          CarOwnerProfileDetailBloc(userRepository: getIt.get<UserRepository>())
            ..add(
              const CarOwnerProfileDetailEvent.started(),
            ),
      child: const CarOwnerProfileDetailView(),
    );
  }
}
