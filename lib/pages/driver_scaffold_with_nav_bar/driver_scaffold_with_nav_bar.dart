import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DriverScaffoldWithNavBar extends StatelessWidget {
  const DriverScaffoldWithNavBar({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.background,
        selectedItemColor: CustomColors.primaryMaterialColor,
        unselectedItemColor: CustomColors.silver,
        items: const [
          BottomNavigationBarItem(
            label: 'Trang chủ',
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Lịch sử',
            icon: Icon(
              Icons.receipt_long_outlined,
            ),
            activeIcon: Icon(Icons.receipt_long),
          ),
          // BottomNavigationBarItem(
          //   label: 'Ví',
          //   icon: Icon(
          //     Icons.wallet_outlined,
          //   ),
          //   activeIcon: Icon(Icons.wallet),
          // ),
          BottomNavigationBarItem(
            label: 'Thông báo',
            icon: Icon(
              Icons.notifications_outlined,
            ),
            activeIcon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            label: 'Hồ sơ',
            icon: Icon(
              Icons.person_outline,
            ),
            activeIcon: Icon(Icons.person),
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith('/driver-home')) {
      return 0;
    }

    if (location.startsWith('/driver-order-history')) {
      return 1;
    }

    // if (location.startsWith('/driver-wallet')) {
    //   return 2;
    // }
    if (location.startsWith('/driver-notification')) {
      return 2;
    }
    if (location.startsWith('/driver-profile')) {
      return 3;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.goNamed(RouteName.driverHome);
        break;
      case 1:
        context.goNamed(RouteName.driverOrderHistory);
        break;
      // case 2:
      //   context.goNamed(RouteName.driverWallet);
      //   break;
      case 2:
        context.goNamed(RouteName.driverNotification);
        break;
      case 3:
        context.goNamed(RouteName.driverProfile);
        break;
    }
  }
}
