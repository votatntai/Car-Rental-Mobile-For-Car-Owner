import 'dart:convert';

import 'package:car_rental_for_car_owner/app/route/observers.dart';
import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/pages/car_calendar/views/car_calendar_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/car_owner_car_detail.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_driver_detail/views/car_owner_driver_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/car_owner_home.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_notification/views/car_owner_notification_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_detail/views/car_owner_order_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_history/views/car_owner_order_history_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile/views/car_owner_profile_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_scaffold_with_nav_bar/car_owner_driver_scaffold_with_nav_bar.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_wallet/views/car_owner_wallet_page.dart';
import 'package:car_rental_for_car_owner/pages/car_tracking/views/car_tracking_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_notification/views/driver_notification_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_detail/views/driver_order_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_history/views/driver_order_history_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_scaffold_with_nav_bar/driver_scaffold_with_nav_bar.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/driver_home.dart';
import 'package:car_rental_for_car_owner/pages/driver_wallet/views/driver_wallet_page.dart';
import 'package:car_rental_for_car_owner/pages/login/login.dart';
import 'package:car_rental_for_car_owner/pages/driver_profile/driver_profile.dart';
import 'package:car_rental_for_car_owner/pages/sign_up/sign_up.dart';
import 'package:car_rental_for_car_owner/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  final GlobalKey<NavigatorState> driverShellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'driver-shell');
  final GlobalKey<NavigatorState> carOwnerShellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'driver-shell');

  final ValueKey<String> _shellNavigationKey =
      const ValueKey<String>('Shell Navigator Key');
  late final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/splash',
        name: RouteName.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/login',
        name: RouteName.login,
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: 'sign-up',
            name: RouteName.signUp,
            builder: (context, state) => const SignUpPage(),
          ),
        ],
      ),
      ShellRoute(
        navigatorKey: driverShellNavigatorKey,
        builder: (context, state, child) =>
            DriverScaffoldWithNavBar(child: child),
        routes: [
          GoRoute(
            path: '/driver-home',
            name: RouteName.driverHome,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: DriverHomePage(),
            ),
          ),
          GoRoute(
            path: '/driver-profile',
            name: RouteName.driverProfile,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: DriverProfilePage(),
            ),
          ),
          GoRoute(
            path: '/driver-wallet',
            name: RouteName.driverWallet,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: DriverWalletPage(),
            ),
            // routes: [
            //   GoRoute(
            //     path: 'transaction-history',
            //     name: RouteName.transactionHistory,
            //     builder: (context, state) {
            //       return const TransactionHistoryPage();
            //     },
            //   ),
            //   GoRoute(
            //     path: 'transaction-detail',
            //     name: RouteName.transactionDetail,
            //     builder: (context, state) {
            //       final transactionId = state.queryParams['transaction-id'];
            //       return TransactionDetailPage(
            //         transactionId: transactionId,
            //       );
            //     },
            //   ),
            // ]
          ),
          GoRoute(
            path: '/driver-notification',
            name: RouteName.driverNotification,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: DriverNotificationPage(),
            ),
          ),
          GoRoute(
            path: '/driver-order-history',
            name: RouteName.driverOrderHistory,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: DriverOrderHistoryPage(),
            ),
          ),
        ],
      ),

      ShellRoute(
        navigatorKey: carOwnerShellNavigatorKey,
        builder: (context, state, child) =>
            CarOwnerScaffoldWithNavBar(child: child),
        routes: [
          GoRoute(
            path: '/car-owner-home',
            name: RouteName.carOwnerHome,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: CarOwnerHomePage(),
            ),
          ),
          GoRoute(
            path: '/car-owner-profile',
            name: RouteName.carOwnerProfile,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: CarOwnerProfilePage(),
            ),
          ),
          GoRoute(
            path: '/car-owner-wallet',
            name: RouteName.carOwnerWallet,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: CarOwnerWalletPage(),
            ),
          ),
          GoRoute(
            path: '/car-owner-notification',
            name: RouteName.carOwnerNotification,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: CarOwnerNotificationPage(),
            ),
          ),
          GoRoute(
            path: '/car-owner-order-history',
            name: RouteName.carOwnerOrderHistory,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: CarOwnerOrderHistoryPage(),
            ),
          ),
        ],
      ),

      // driver
      GoRoute(
        path: '/driver-order-detail',
        parentNavigatorKey: rootNavigatorKey,
        name: RouteName.driverOrderDetail,
        builder: (context, state) {
          final order = state.extra as Order?;
          return DriverOrderDetailPage(
            order: order,
          );
        },
      ),

      // car owner
      GoRoute(
        path: '/car-owner-order-detail',
        parentNavigatorKey: rootNavigatorKey,
        name: RouteName.carOwnerOrderDetail,
        builder: (context, state) {
          final order = state.extra as Order?;
          return CarOwnerOrderDetailPage(
            order: order,
          );
        },
      ),
      GoRoute(
        path: '/car-owner-driver-detail',
        name: RouteName.carOwnerDriverDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final driverId = state.queryParams['driver-id'] ?? '';

          return CarOwnerDriverDetailPage(
            driverId: driverId,
          );
        },
      ),

      GoRoute(
        path: '/car-owner-car-detail',
        name: RouteName.carOwnerCarDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final carId = state.queryParams['car-id'] ?? '';

          return CarOwnerCarDetailPage(
            carId: carId,
          );
        },
      ),

      GoRoute(
        path: '/car-tracking',
        name: RouteName.carTracking,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          List<String> carIds = [];
          try {
            final json = state.queryParams['car-ids'];

            carIds = List<String>.from(jsonDecode(json!));
            // ignore: empty_catches
          } catch (e) {
            print(e);
          }

          return CarTrackingPage(
            carIds: carIds,
          );
        },
      ),

      GoRoute(
        path: '/car-calendar',
        name: RouteName.carCalendar,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final carId = state.queryParams['car-id'] ?? '';
          return CarCalendarPage(
            carId: carId,
          );
        },
      ),
    ],
    initialLocation: '/splash',
    observers: [NavObserver()],
    debugLogDiagnostics: true,
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
          key: key,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation.drive(_curveTween),
            child: child,
          ),
          child: child,
        );

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
