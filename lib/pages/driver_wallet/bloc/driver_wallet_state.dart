part of 'driver_wallet_bloc.dart';

@freezed
class DriverWalletState with _$DriverWalletState {
  const factory DriverWalletState.initial() = _Initial;
  const factory DriverWalletState.loading() = _Loading;
  const factory DriverWalletState.success({
    required Driver driver,
    required List<Transaction> transactions,
    required double balance,
  }) = _Success;
  const factory DriverWalletState.failure({required String message}) = _Failure;
}
