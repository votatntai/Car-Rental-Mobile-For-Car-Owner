import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

class ContainerWithLabel extends StatelessWidget {
  const ContainerWithLabel({
    Key? key,
    required this.label,
    required this.child,
    this.padding,
    this.trailing,
  }) : super(key: key);
  final String label;
  final Widget child;

  final EdgeInsetsGeometry? padding;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  label.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
          const SizedBox(height: s08),
          child
        ],
      ),
    );
  }
}
