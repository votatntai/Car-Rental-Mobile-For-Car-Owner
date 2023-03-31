import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({
    Key? key,
    required this.onTap,
    required this.driver,
  }) : super(key: key);

  final Function(Driver driver) onTap;
  final Driver driver;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(driver),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Text(
                  driver.name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.jetBlack,
                  ),
                ),
              ),
              const SizedBox(height: s04),
              Text(
                driver.phone,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: CustomColors.jetBlack,
                ),
              ),
              const SizedBox(height: s04),
              SizedBox(
                width: context.width() * 0.5,
                child: Text(
                  driver.address ?? '',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.jetBlack,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          if (driver.avatarUrl != null)
            CachedNetworkImage(
                height: 60,
                width: 60,
                imageUrl: driver.avatarUrl!,
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
