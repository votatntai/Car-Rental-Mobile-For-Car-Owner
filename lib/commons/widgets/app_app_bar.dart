import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

PreferredSizeWidget appAppBar(
  BuildContext context, {
  String? titleText,
  Widget? actionWidget,
  Widget? actionWidget2,
  Widget? actionWidget3,
  bool? leading = true,
}) {
  return AppBar(
    backgroundColor: context.scaffoldBackgroundColor,
    leading: leading == true
        ? IconButton(
            icon: Icon(Icons.arrow_back, color: context.iconColor),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        : null,
    actions: [
      actionWidget ?? const SizedBox(),
      actionWidget2 ?? const SizedBox(),
      actionWidget3 ?? const SizedBox()
    ],
    title: Text(titleText ?? '', style: boldTextStyle(size: 18)),
    elevation: 0.0,
  );
}
