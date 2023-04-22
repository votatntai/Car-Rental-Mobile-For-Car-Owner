import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_car_owner/models/car_registration.dart';
import 'package:flutter/material.dart';

class CarRegistrationItemVertical extends StatelessWidget {
  const CarRegistrationItemVertical({
    super.key,
    required this.carRegistration,
    required this.onTap,
  });

  final CarRegistration carRegistration;
  final Function(CarRegistration carRegistration) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(carRegistration),
      child: SizedBox(
        height: 330,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  carRegistration.images?.isNotEmpty == true
                      ? CachedNetworkImage(
                          height: 220,
                          width: double.infinity,
                          imageUrl: carRegistration.images![0].url,
                          fit: BoxFit.fill,
                          errorWidget: (context, url, error) {
                            return const Icon(Icons.error);
                          })
                      : const Image(
                          height: 220,
                          width: double.infinity,
                          fit: BoxFit.fill,
                          image: AssetImage(
                            Images.carExample,
                          ),
                        ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          carRegistration.name ?? '',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: s08,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s08),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CarCardTag(text: carRegistration.transmissionType),
                    const Spacer(),
                    Text(
                      formatCurrency(carRegistration.price),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.flamingo,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    const Text(
                      '/ngày',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.dimGray,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s08),
                child: Text(
                  carRegistration.status == true
                      ? 'Đã được duyệt'
                      : carRegistration.status == false &&
                              carRegistration.description != null &&
                              carRegistration.description?.isNotEmpty == true
                          ? 'Bị từ chối'
                          : 'Chưa được duyệt',
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.jetBlack,
                  ),
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 15,
                    ),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Text(
                        carRegistration.location,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.jetBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
