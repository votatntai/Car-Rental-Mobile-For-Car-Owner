import 'package:flutter_dotenv/flutter_dotenv.dart';

const selectedCarRefs = 'selectedCar';
String socketUrl = dotenv.env['SOCKET_URL'] ?? '';
