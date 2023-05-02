import 'dart:convert';

import 'package:car_rental_for_car_owner/app/route/observers.dart';
import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:car_rental_for_car_owner/pages/car_calendar/views/car_calendar_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/car_owner_car_detail.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_detail/views/car_owner_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_driver_detail/views/car_owner_driver_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/car_owner_home.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_notification/views/car_owner_notification_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_detail/views/car_owner_order_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_history/views/car_owner_order_history_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_payment_webview/views/car_owner_payment_webview_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile/views/car_owner_profile_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile_detail/bloc/car_owner_profile_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile_detail/views/car_owner_profile_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_recharge/views/car_owner_recharge_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_scaffold_with_nav_bar/car_owner_driver_scaffold_with_nav_bar.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_setting/views/car_owner_setting_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_transaction_detail/views/car_owner_transaction_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_transaction_history/views/car_owner_transaction_history_page.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_wallet/views/car_owner_wallet_page.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/views/car_registration_page.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_detail/views/car_registration_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_list/views/car_registration_list_page.dart';
import 'package:car_rental_for_car_owner/pages/car_tracking/views/car_tracking_page.dart';
import 'package:car_rental_for_car_owner/pages/customer_detail/views/customer_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_notification/views/driver_notification_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_detail/views/driver_order_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_history/views/driver_order_history_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_profile_detail/views/driver_profile_detail_page.dart';
import 'package:car_rental_for_car_owner/pages/driver_scaffold_with_nav_bar/driver_scaffold_with_nav_bar.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/driver_home.dart';
import 'package:car_rental_for_car_owner/pages/driver_wallet/views/driver_wallet_page.dart';
import 'package:car_rental_for_car_owner/pages/feedback_list/views/feedback_list_page.dart';
import 'package:car_rental_for_car_owner/pages/forgot_password/views/forgot_password_page.dart';
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
          GoRoute(
            path: 'forgot-password',
            name: RouteName.forgotPassword,
            builder: (context, state) => const ForgotPasswordPage(),
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
            routes: [
              GoRoute(
                path: 'driver-profile-detail',
                parentNavigatorKey: rootNavigatorKey,
                name: RouteName.driverProfileDetail,
                builder: (context, state) => DriverProfileDetailPage(),
              ),
            ],
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
            routes: [
              GoRoute(
                path: 'car-registration-list',
                name: RouteName.carRegistrationList,
                builder: (context, state) {
                  return CarRegistrationListPage();
                },
              ),
            ],
          ),
          GoRoute(
            path: '/car-owner-profile',
            name: RouteName.carOwnerProfile,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: CarOwnerProfilePage(),
            ),
            routes: [
              GoRoute(
                path: 'car-owner-setting',
                name: RouteName.carOwnerSetting,
                builder: (context, state) {
                  return CarOwnerSettingPage();
                },
              ),
              GoRoute(
                path: 'car-owner-profile-detail',
                parentNavigatorKey: rootNavigatorKey,
                name: RouteName.carOwnerProfileDetail,
                builder: (context, state) => CarOwnerProfileDetailPage(),
              ),
            ],
          ),
          GoRoute(
              path: '/car-owner-wallet',
              name: RouteName.carOwnerWallet,
              pageBuilder: (context, state) => FadeTransitionPage(
                    key: _shellNavigationKey,
                    child: CarOwnerWalletPage(),
                  ),
              routes: [
                GoRoute(
                  path: 'car-owner-transaction-history',
                  name: RouteName.carOwnerTransactionHistory,
                  builder: (context, state) {
                    return CarOwnerTransactionHistoryPage();
                  },
                ),
                GoRoute(
                  path: 'car-owner-transaction-detail',
                  name: RouteName.carOwnerTransactionDetail,
                  builder: (context, state) {
                    final transactionId = state.queryParams['transaction-id'];
                    return CarOwnerTransactionDetailPage(
                      transactionId: transactionId,
                    );
                  },
                ),
                GoRoute(
                    path: 'recharge',
                    name: RouteName.carOwnerRecharge,
                    builder: (context, state) {
                      return CarOwnerRechargePage();
                    },
                    routes: [
                      GoRoute(
                        path: 'payment-webview',
                        name: RouteName.carOwnerPaymentWebview,
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) {
                          final url = state.queryParams['url'] ?? '';

                          return CarOwnerPaymentWebviewPage(
                            url: url,
                          );
                        },
                      ),
                    ]),
              ]),
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
      GoRoute(
        path: '/car-registration',
        name: RouteName.carRegistration,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          return CarRegistrationPage();
        },
      ),

      GoRoute(
        path: '/car-registration-detail',
        name: RouteName.carRegistrationDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final carRegistrationId = state.queryParams['car-registration-id'];

          return CarRegistrationDetailPage(id: carRegistrationId);
        },
      ),
      GoRoute(
        path: '/feedback-list',
        name: RouteName.feedbackList,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final carId = state.queryParams['car-id'];
          final driverId = state.queryParams['driver-id'];

          return FeedbackListPage(
            carId: carId,
            driverId: driverId,
          );
        },
      ),

      GoRoute(
        path: '/car-owner-detail',
        name: RouteName.carOwnerDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final carOwnerId = state.queryParams['car-owner-id'] ?? '';

          return CarOwnerDetailPage(
            carOwnerId: carOwnerId,
          );
        },
      ),

      GoRoute(
        path: '/customer-detail',
        name: RouteName.customerDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final customerId = state.queryParams['customer-id'] ?? '';

          return CustomerDetailPage(
            customerId: customerId,
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
