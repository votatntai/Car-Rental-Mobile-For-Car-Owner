import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/models/enums/rental_car_type.dart';
import 'package:car_rental_for_car_owner/models/order.dart';
import 'package:flutter/material.dart';

class OrderItemForCarOwner extends StatelessWidget {
  const OrderItemForCarOwner(
      {super.key, required this.order, required this.onTap});

  final Order order;
  final Function(Order) onTap;

  @override
  Widget build(BuildContext context) {
    if (order.orderDetails.isEmpty) {
      return Container();
    }
    return InkWell(
      onTap: () => onTap(order),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: s04),
        child: Card(
          color: const Color(0xfffffaf4),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(s12),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 110,
                      child: Text(
                        'Khách hàng:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        order.customer.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: s12),
                Row(
                  children: [
                    const SizedBox(
                      width: 110,
                      child: Text(
                        'Thời gian thuê:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          order.orderDetails.first.startTime.format('HH:mm'),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          order.orderDetails.first.startTime
                              .format('dd/MM/yyyy'),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: s12),
                    const Text('-'),
                    const SizedBox(width: s12),
                    Column(
                      children: [
                        Text(
                          order.orderDetails.first.endTime.format('HH:mm'),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          order.orderDetails.first.endTime.format('dd/MM/yyyy'),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: s12),
                Row(
                  children: [
                    const SizedBox(
                      width: 110,
                      child: Text(
                        'Xe:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        order.orderDetails.first.car.name ?? '',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: s12),
                Row(
                  children: [
                    const SizedBox(
                      width: 110,
                      child: Text(
                        'Loại thuê xe:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        order.hasDriverDisplay,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: s12),
                Row(
                  children: [
                    const SizedBox(
                      width: 110,
                      child: Text(
                        'Trạng thái:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        order.status.displayName,
                        style: TextStyle(
                          fontSize: 14,
                          color: order.status.displayColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
