part of 'car_owner_transaction_detail_bloc.dart';

@freezed
class CarOwnerTransactionDetailEvent with _$CarOwnerTransactionDetailEvent {
  const factory CarOwnerTransactionDetailEvent.started({
    required String transactionId,
  }) = _Started;
}
