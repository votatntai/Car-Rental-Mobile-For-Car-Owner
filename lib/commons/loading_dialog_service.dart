import 'package:car_rental_for_car_owner/app/route/app_route.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:flutter/material.dart';

class LoadingDialogService {
  const LoadingDialogService._();

  static IDialog? _current;

  static Future<void> load({
    String? title,
  }) async {
    _current = LoadDialog(title: title);

    await showDialog(
      context: getIt<AppRoute>().rootNavigatorKey.currentContext!,
      barrierDismissible: false,
      builder: (context) => _current ?? LoadDialog(title: title),
    );
  }

  static void dispose() {
    if (_current != null) {
      _current!.dismiss();
      _current = null;
    }
  }
}

mixin IDialogService {
  void dismiss();
}

abstract class IDialog extends StatelessWidget with IDialogService {
  const IDialog({Key? key}) : super(key: key);
}

// ignore: must_be_immutable
class LoadDialog extends IDialog {
  final String? title;
  LoadDialog({
    Key? key,
    this.title,
  }) : super(key: key);

  BuildContext? _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          // The loading indicator
          CircularProgressIndicator(),
          SizedBox(
            height: 15,
          ),
          // Some text
          Text('Đang tải...')
        ],
      ),
    );
  }

  @override
  void dismiss() {
    Navigator.pop(_context!);
  }
}
