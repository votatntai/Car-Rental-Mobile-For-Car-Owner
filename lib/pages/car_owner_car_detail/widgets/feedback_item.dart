import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/customer.dart';
import 'package:car_rental_for_car_owner/models/driver.dart';
import 'package:car_rental_for_car_owner/models/feedback.dart';
import 'package:car_rental_for_car_owner/repositories/customer_repository.dart';
import 'package:car_rental_for_car_owner/repositories/driver_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

class FeedbackItem extends StatefulWidget {
  const FeedbackItem({
    super.key,
    required this.feedback,
    this.onTap,
  });

  final FeedbackModel feedback;
  final Function(FeedbackModel feedback)? onTap;

  @override
  State<FeedbackItem> createState() => _FeedbackItemState();
}

class _FeedbackItemState extends State<FeedbackItem> {
  Customer? customer;
  Driver? driver;

  Future<void> loadData() async {
    final customerResult = await getIt
        .get<CustomerRepository>()
        .customerById(widget.feedback.customerId ?? '');

    final driverResult = await getIt
        .get<DriverRepository>()
        .driver(widget.feedback.driverId ?? '');

    setState(() {
      customer = customerResult;
      driver = driverResult;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap?.call(widget.feedback),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (customer?.avatarUrl != null)
                CachedNetworkImage(
                  imageUrl: customer!.avatarUrl ?? '',
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ).cornerRadiusWithClipRRect(60)
              else if (driver?.avatarUrl != null)
                CachedNetworkImage(
                  imageUrl: driver!.avatarUrl ?? '',
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ).cornerRadiusWithClipRRect(60)
              else
                Image.asset(
                  Images.userImage,
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ).cornerRadiusWithClipRRect(60),
              const SizedBox(
                width: s08,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      customer?.name ?? driver?.name ?? '',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.jetBlack,
                      ),
                    ),
                    const SizedBox(height: 4),
                    RatingBarIndicator(
                      rating: widget.feedback.star?.toDouble() ?? 0,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15,
                      direction: Axis.horizontal,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.feedback.content ?? '',
                      style: const TextStyle(
                        fontSize: 12,
                        color: CustomColors.jetBlack,
                      ),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('dd/MM/yyyy HH:mm').format(
                      widget.feedback.createAt,
                    ),
                    style: const TextStyle(
                      fontSize: 11,
                      color: CustomColors.jetBlack,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
