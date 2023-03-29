part of 'driver_wallet_bloc.dart';

@freezed
class DriverWalletEvent with _$DriverWalletEvent {
  const factory DriverWalletEvent.started() = _Started;
}
