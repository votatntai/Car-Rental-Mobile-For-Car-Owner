import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/wallet.dart';
import 'package:dio/dio.dart';

class WalletRepository {
  WalletRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<Wallet>> myWallet() async {
    try {
      final result = await dio.get<JsonObject>(
        '/wallets',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Wallet.fromJson(result.data!),
        );
      }

      return const ApiSuccess(
        Wallet(id: '', balance: 0, status: ''),
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
