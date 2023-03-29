part of 'car_owner_wallet_bloc.dart';

@freezed
class CarOwnerWalletState with _$CarOwnerWalletState {
  const factory CarOwnerWalletState.initial() = _Initial;
  const factory CarOwnerWalletState.loading() = _Loading;
  const factory CarOwnerWalletState.success({
    required CarOwner carOwner,
    required List<Transaction> transactions,
    required double balance,
  }) = _Success;
  const factory CarOwnerWalletState.failure({required String message}) =
      _Failure;
}
