part of 'car_owner_wallet_bloc.dart';

@freezed
class CarOwnerWalletEvent with _$CarOwnerWalletEvent {
  const factory CarOwnerWalletEvent.started() = _Started;
}