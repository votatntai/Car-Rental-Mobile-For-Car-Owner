import 'package:car_rental_for_car_owner/app/bloc/authentication_bloc.dart';
import 'package:car_rental_for_car_owner/app/route/app_route.dart';
import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/theme.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/auth_data.dart';
import 'package:car_rental_for_car_owner/models/enums/role.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
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
        switch (state.authData.status) {
          case AuthenticationStatus.authenticated:
            if (state.authData.role == Role.carOwner) {
              _router.goNamed(RouteName.carOwnerHome);
            }

            if (state.authData.role == Role.driver) {
              _router.goNamed(RouteName.driverHome);
            }
            break;
          case AuthenticationStatus.unauthenticated:
            _router.goNamed(RouteName.login);

            break;
          case AuthenticationStatus.unknown:
            break;
        }
      },
      child: MaterialApp.router(
        theme: lightTheme,
        darkTheme: lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          SfGlobalLocalizations.delegate
        ],
        supportedLocales: const [
          Locale('vi'),
        ],
        locale: const Locale('vi', 'VN'),
      ),
    );
  }
}
