import 'package:car_rental_for_car_owner/app/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:car_rental_for_car_owner/bootstrap.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  await bootstrap(() => const App());
}
