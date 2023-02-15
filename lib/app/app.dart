import 'package:car_rental_for_car_owner/app/bloc/app_bloc.dart';
import 'package:car_rental_for_car_owner/app/bloc/authentication_bloc.dart';
import 'package:car_rental_for_car_owner/app/views/app_view.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: AuthenticationBloc(
            authenticationRepository: getIt.get<AuthenticationRepository>(),
          ),
        ),
        BlocProvider.value(
          value: AppBloc(),
        ),
      ],
      child: const AppView(),
    );
  }
}
