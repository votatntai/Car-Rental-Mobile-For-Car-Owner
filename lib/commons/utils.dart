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
