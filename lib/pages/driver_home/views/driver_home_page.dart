import 'package:flutter/material.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/views/driver_home_view.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({Key? key}) : super(key: key);

  @override
  State<DriverHomePage> createState() => _DriverHomePageState();
}

class _DriverHomePageState extends State<DriverHomePage> {
  @override
  Widget build(BuildContext context) {
    return const DriverHomeView();
  }
}
