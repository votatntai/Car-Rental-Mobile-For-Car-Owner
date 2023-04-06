import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/models/notification.dart'
    as notification_model;
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key, required this.notification})
      : super(key: key);

  final notification_model.Notification notification;

  @override
  Widget build(BuildContext context) {
    final timeagoString = timeago
        .format(notification.data?.createAt ?? DateTime.now(), locale: 'vi');
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: s08,
            horizontal: s04,
          ),
          color: notification.data?.isRead ?? true
              ? Colors.white
              : Colors.grey[100],
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  color: CustomColors.gainsboro,
                  height: 55,
                  width: 55,
                  child: const Icon(
                    Icons.notifications,
                    color: CustomColors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: s16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: context.width() * 2 / 3,
                      child: Text(
                        notification.title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: boldTextStyle(),
                      ),
                    ),
                    const SizedBox(
                      height: s02,
                    ),
                    Text(
                      notification.body,
                      style: secondaryTextStyle(),
                    ),
                    const SizedBox(
                      height: s04,
                    ),
                    Text(
                      timeagoString,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const Divider(height: 0, thickness: 0.5),
      ],
    );
  }
}
