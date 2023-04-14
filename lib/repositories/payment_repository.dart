import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:dio/dio.dart';

class PaymentRepository {
  PaymentRepository({
    required this.dio,
  });

  final Dio dio;

  Future<String?> requestPayment({
    required int amount,
  }) async {
    try {
      final response = await dio.post<dynamic>(
        'payments/request',
        data: {
          'amount': amount.toString(),
        },
      );

      if (response.statusCode == StatusCodes.status200OK) {
        return response.data as String?;
      }

      return null;
    } catch (e) {
      return null;
    }
  }
}
