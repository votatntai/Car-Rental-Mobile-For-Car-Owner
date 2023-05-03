import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_car_owner/commons/widgets/location_text.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CarItem extends StatelessWidget {
  const CarItem({
    Key? key,
    required this.car,
    required this.onTap,
  }) : super(key: key);

  final Car car;
  final Function(String id) onTap;

  String carStatus(String carStatus) {
    if (carStatus == 'ongoing') {
      return 'Đang thuê';
    }
    if (carStatus == 'blocked') {
      return 'Đã bị khóa';
    }
    if (carStatus == 'idle') {
      return 'Đang trống';
    }
    return 'Đang thuê';
  }

  Color carStatusColor(String carStatus) {
    if (carStatus == 'ongoing') {
      return Colors.red;
    }
    if (carStatus == 'blocked') {
      return Colors.grey;
    }
    if (carStatus == 'idle') {
      return Colors.green;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(car.id),
      child: SizedBox(
        // height: 300,
        child: Card(
          child: Column(
            children: [
              Stack(
                children: [
                  car.imageUrl != null
                      ? CachedNetworkImage(
                          height: 220,
                          width: double.infinity,
                          imageUrl: car.imageUrl!,
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
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(s04),
                      decoration: BoxDecoration(
                        color: CustomColors.flamingo,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'ETC',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${car.productionCompany?.name} ${car.name}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              car.star.toString(),
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.white,
                              ),
                            ),
                            const SizedBox(
                              width: s02,
                            ),
                            const Icon(
                              Icons.star,
                              color: CustomColors.flamingo,
                              size: 12,
                            ),
                            const SizedBox(
                              width: s02,
                            ),
                            const Icon(
                              Icons.fiber_manual_record,
                              color: CustomColors.white,
                              size: 8,
                            ),
                            const SizedBox(
                              width: s02,
                            ),
                            Text(
                              car.rented.toString(),
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: CustomColors.white,
                              ),
                            ),
                          ],
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
                    CarCardTag(text: car.model.transmissionType),
                    const Spacer(),
                    Text(
                      formatCurrency(car.price),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 15,
                    ),
                    const SizedBox(width: 2),
                    SizedBox(
                      width: context.width() * 0.8,
                      child: LocationText(
                        longitude: car.location.longitude,
                        latitude: car.location.latitude,
                      ),
                    ),
                  ],
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
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: carStatusColor(car.status.toLowerCase()),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        carStatus(car.status.toLowerCase()),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: s08,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
