part of 'car_owner_transaction_history_bloc.dart';

@freezed
class CarOwnerTransactionHistoryEvent with _$CarOwnerTransactionHistoryEvent {
  const factory CarOwnerTransactionHistoryEvent.started() = _Started;
  const factory CarOwnerTransactionHistoryEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;
}
