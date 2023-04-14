part of 'car_owner_transaction_history_bloc.dart';

@freezed
class CarOwnerTransactionHistoryState with _$CarOwnerTransactionHistoryState {
  const factory CarOwnerTransactionHistoryState({
    ScrollPagination<Transaction>? scrollPagination,
  }) = _CarOwnerTransactionHistoryState;
}
