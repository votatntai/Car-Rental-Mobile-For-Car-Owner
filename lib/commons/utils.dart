import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

String formatDate(
  String? dateTime, {
  String format = 'dd/MM/yyyy',
  bool isFromMicrosecondsSinceEpoch = false,
}) {
  if (isFromMicrosecondsSinceEpoch) {
    return DateFormat(format).format(
      DateTime.fromMicrosecondsSinceEpoch(dateTime.validate().toInt() * 1000),
    );
  } else {
    return DateFormat(format).format(DateTime.parse(dateTime.validate()));
  }
}

String? passwordValidator(String? password) {
  if (password == null) return null;
  if (password.length < 6) {
    return 'mật khẩu phải có ít nhất 6 ký tự';
  } else if (password.length > 16) {
    return 'mật khẩu không được quá 16 ký tự';
  } else if (password.isEmpty) {
    return 'mật khẩu không được để trống';
  }
  return null;
}

String dateRangeToString(
  DateTime startDate,
  DateTime endDate, {
  bool hasYear = true,
}) {
  final formatString = hasYear ? 'dd/MM/yyyy' : 'dd/MM';
  final startTime = DateFormat.jm().format(startDate);
  final endTime = DateFormat.jm().format(endDate);

  final startDateString = DateFormat(formatString).format(startDate);
  final endDateString = DateFormat(formatString).format(endDate);

  return '$startTime, $startDateString - $endTime, $endDateString';
}

String dateToString(DateTime date) {
  final time = DateFormat.jm().format(date);
  final dateString = DateFormat('dd/MM/yyyy').format(date);

  return '$time, $dateString';
}

String formatTimeOfDay(TimeOfDay timeOfDay) {
  final format = NumberFormat('00');
  return '${format.format(timeOfDay.hour)}:${format.format(timeOfDay.minute)}';
}

String formatCurrency(double price) {
  return NumberFormat.currency(locale: 'vi', symbol: 'đ').format(price);
}

Future<Position?> determineCurrentPosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // return Future.error('Location services are disabled.');

    return null;
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // return Future.error('Location permissions are denied');
      return null;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // return Future.error(
    //     'Location permissions are permanently denied, we cannot request permissions.');

    return null;
  }

  return await Geolocator.getCurrentPosition();
}

int calculateDays(DateTime startDate, DateTime endDate) {
  final difference = endDate.difference(startDate);
  return (difference.inMinutes / 60 / 24).ceil();
}
