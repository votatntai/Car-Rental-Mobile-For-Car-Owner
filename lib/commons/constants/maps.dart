import 'package:flutter_dotenv/flutter_dotenv.dart';

String mapsApiKey = dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';
