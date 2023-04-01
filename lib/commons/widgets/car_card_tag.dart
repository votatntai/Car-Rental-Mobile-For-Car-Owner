import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:flutter/material.dart';

class CarCardTag extends StatelessWidget {
  const CarCardTag({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.gainsboro,
        borderRadius: BorderRadius.circular(3),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}
