import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/models/enums/transaction_type.dart';
import 'package:car_rental_for_car_owner/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.transaction,
    required this.onTap,
  }) : super(key: key);

  final Transaction transaction;
  final Function(Transaction) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(transaction),
      child: Container(
        padding: const EdgeInsets.all(s08),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.type.displayName,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: s08),
                Text(
                  'Trạng thái: ${transaction.status}',
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: s08),
                Text(
                  DateFormat('dd/MM/yyyy HH:mm').format(transaction.createAt),
                  style: const TextStyle(
                    fontSize: 11,
                    color: CustomColors.dimGray,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              transaction.type.addOrRemove + formatCurrency(transaction.amount),
              style: TextStyle(
                fontSize: 13,
                color: transaction.type.color,
              ),
            ),
            const SizedBox(
              width: s04,
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: CustomColors.dimGray,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}
