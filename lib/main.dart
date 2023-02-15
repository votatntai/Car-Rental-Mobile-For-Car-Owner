import 'package:car_rental_for_customer/app/app.dart';
import 'package:car_rental_for_customer/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
