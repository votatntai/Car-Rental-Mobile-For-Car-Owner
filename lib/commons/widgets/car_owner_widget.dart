import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CarOwnerWidget extends StatelessWidget {
  const CarOwnerWidget({
    Key? key,
    required this.car,
    required this.onTap,
  }) : super(key: key);

  final Car car;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.carOwner?.name ?? '',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.jetBlack,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                car.carOwner?.phone ?? '',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.jetBlack,
                ),
              ),
            ],
          ),
          const Spacer(),
          if (car.carOwner?.avatarUrl != null)
            CachedNetworkImage(
                height: 60,
                width: 60,
                imageUrl: car.carOwner!.avatarUrl!,
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
