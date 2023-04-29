import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/customer.dart';
import 'package:dio/dio.dart';

class CustomerRepository {
  CustomerRepository({
    required this.dio,
  });

  final Dio dio;

  Future<Customer?> customerById(String customerId) async {
    try {
      final result = await dio.get<JsonObject>(
        'customers/$customerId',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return Customer.fromJson(result.data!);
      }
      return null;
    } on DioError catch (e) {
      return null;
    }
  }
}
