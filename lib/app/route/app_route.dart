import 'package:car_rental_for_car_owner/app/route/observers.dart';
import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
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
              child: const DriverHomePage(),
            ),
          ),
          GoRoute(
            path: '/driver-profile',
            name: RouteName.driverProfile,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: const DriverProfilePage(),
            ),
          ),
          GoRoute(
            path: '/driver-wallet',
            name: RouteName.driverWallet,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: const DriverWalletPage(),
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
              child: const DriverNotificationPage(),
            ),
          ),
          GoRoute(
            path: '/driver-order-history',
            name: RouteName.driverOrderHistory,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: const DriverOrderHistoryPage(),
            ),
          ),
        ],
      ),

// driver
      GoRoute(
        path: '/driver-order-detail',
        name: RouteName.driverOrderDetail,
        builder: (context, state) {
          final order = state.extra as Order?;
          return DriverOrderDetailPage(
            order: order,
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
            child: child);

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
