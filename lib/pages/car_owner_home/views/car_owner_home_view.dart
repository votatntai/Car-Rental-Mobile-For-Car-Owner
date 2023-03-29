import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';

class CarOwnerHomeView extends StatefulWidget {
  const CarOwnerHomeView({super.key});

  @override
  State<CarOwnerHomeView> createState() => _CarOwnerHomeViewState();
}

class _CarOwnerHomeViewState extends State<CarOwnerHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        context,
        titleText: 'Trang chủ',
        leading: false,
      ),
    );
  }
}
