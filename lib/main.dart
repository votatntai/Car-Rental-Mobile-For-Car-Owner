import 'package:car_rental_for_car_owner/app/app.dart';
import 'package:car_rental_for_car_owner/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
