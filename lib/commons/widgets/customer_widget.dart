import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/models/customer.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomerWidget extends StatelessWidget {
  const CustomerWidget({
    Key? key,
    required this.onTap,
    required this.customer,
  }) : super(key: key);

  final Function(Customer driver) onTap;
  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(customer),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    customer.name,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.jetBlack,
                    ),
                  ),
                ),
                const SizedBox(height: s04),
                Text(
                  customer.phone,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.jetBlack,
                  ),
                ),
                // const SizedBox(height: s04),
                // SizedBox(
                //   width: context.width() * 0.5,
                //   child: Text(
                //     customer.address ?? '',
                //     style: const TextStyle(
                //       fontSize: 12,
                //       fontWeight: FontWeight.w400,
                //       color: CustomColors.jetBlack,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(width: s16),
          if (customer.avatarUrl != null)
            CachedNetworkImage(
                height: 60,
                width: 60,
                imageUrl: customer.avatarUrl!,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) {
                  return const Icon(Icons.error);
                })
          else
            Image.asset(
              Images.userImage,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ).cornerRadiusWithClipRRect(60),
        ],
      ),
    );
  }
}
