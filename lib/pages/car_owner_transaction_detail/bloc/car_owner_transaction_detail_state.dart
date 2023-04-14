part of 'car_owner_transaction_detail_bloc.dart';

@freezed
class CarOwnerTransactionDetailState with _$CarOwnerTransactionDetailState {
  const factory CarOwnerTransactionDetailState({
    Transaction? transaction,
  }) = _CarOwnerTransactionDetailState;
}
