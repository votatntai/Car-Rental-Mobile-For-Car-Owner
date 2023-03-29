import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.order, required this.onTap});

  final Order order;
  final Function(Order) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: s04),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(s12),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Khách hàng:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: s32),
                  Text(order.customer.name),
                ],
              ),
              const SizedBox(height: s12),
              Row(
                children: [
                  const Text(
                    'Thời gian thuê:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 14),
                  Column(
                    children: [
                      Text(
                        order.startTime.format('HH:mm'),
                      ),
                      Text(
                        order.startTime.format('dd/MM/yyyy'),
                      ),
                    ],
                  ),
                  const SizedBox(width: s12),
                  const Text('-'),
                  const SizedBox(width: s12),
                  Column(
                    children: [
                      Text(
                        order.endTime.format('HH:mm'),
                      ),
                      Text(
                        order.endTime.format('dd/MM/yyyy'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: s12),
              Row(
                children: [
                  const Text(
                    'Trạng thái:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 40),
                  Text(
                    order.status.displayName,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
