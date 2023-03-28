import 'package:flutter_dotenv/flutter_dotenv.dart';

String baseUrl = dotenv.env['BASE_URL'] ?? '';
const int connectTimeout = 15000;
const int receiveTimeout = 15000;
const int sendTimeout = 15000;

mixin StatusCodes {
  static const int status200OK = 200;
  static const int status201Created = 201;
  static const int status204NoContent = 204;
  static const int status400BadRequest = 400;
  static const int status401Unauthorized = 401;
  static const int status403Forbidden = 403;
  static const int status404NotFound = 404;
}
