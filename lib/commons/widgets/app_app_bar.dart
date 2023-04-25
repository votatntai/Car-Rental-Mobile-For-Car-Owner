import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

PreferredSizeWidget appAppBar(
  BuildContext context, {
  String? titleText,
  Widget? actionWidget,
  Widget? actionWidget2,
  bool? leading = true,
  Color? backgroundColor,
}) {
  return AppBar(
    backgroundColor: backgroundColor ?? CustomColors.appBarColor,
    leading: leading == true
        ? IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        : null,
    actions: [
      actionWidget ?? const SizedBox(),
      actionWidget2 ?? const SizedBox()
    ],
    title: Text(
      titleText ?? '',
    ),
    elevation: 0.0,
  );
}
