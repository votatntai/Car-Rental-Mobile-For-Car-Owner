import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

class ContainerWithLabel extends StatelessWidget {
  const ContainerWithLabel({
    Key? key,
    required this.label,
    required this.child,
  }) : super(key: key);
  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: s08),
        child
      ],
    );
  }
}
