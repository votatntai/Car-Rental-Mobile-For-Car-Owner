import 'package:car_rental_for_customer/app/bloc/authentication_bloc.dart';
import 'package:car_rental_for_customer/app/route/app_route.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/theme.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  AuthenticationStatus currentAuthStatus = AuthenticationStatus.unknown;

  final _router = getIt.get<AppRoute>().router;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state.status) {
          case AuthenticationStatus.authenticated:
            currentAuthStatus = AuthenticationStatus.authenticated;
            _router.goNamed(RouteName.home);
            break;
          case AuthenticationStatus.unauthenticated:
            currentAuthStatus = AuthenticationStatus.authenticated;
            _router.goNamed(RouteName.login);

            break;
          case AuthenticationStatus.unknown:
            currentAuthStatus = AuthenticationStatus.authenticated;
            break;
        }
      },
      child: MaterialApp.router(
        theme: lightTheme,
        darkTheme: lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}
