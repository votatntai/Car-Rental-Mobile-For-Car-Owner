import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/models/scroll_pagination.dart';
import 'package:car_rental_for_car_owner/models/transaction.dart';
import 'package:car_rental_for_car_owner/repositories/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_transaction_history_event.dart';
part 'car_owner_transaction_history_state.dart';
part 'car_owner_transaction_history_bloc.freezed.dart';

class CarOwnerTransactionHistoryBloc extends Bloc<
    CarOwnerTransactionHistoryEvent, CarOwnerTransactionHistoryState> {
  CarOwnerTransactionHistoryBloc({
    required this.transactionRepository,
  }) : super(const CarOwnerTransactionHistoryState()) {
    on<_Started>(_onStared);
    on<_PageRequested>(_onPageRequested);
  }
  final pageSize = 10;
  final TransactionRepository transactionRepository;

  FutureOr<void> _onStared(
    _Started event,
    Emitter<CarOwnerTransactionHistoryState> emit,
  ) async {}

  FutureOr<void> _onPageRequested(
    _PageRequested event,
    Emitter<CarOwnerTransactionHistoryState> emit,
  ) async {
    final page = (event.pageKey / pageSize).floor() + 1;

    final transactionResult = await transactionRepository.transactions(
      pageNumber: page,
      pageSize: pageSize,
    );

    final lastListingState =
        event.pageKey == 0 || state.scrollPagination == null
            ? ScrollPagination<Transaction>(
                nextPageKey: 0,
                error: null,
                itemList: [],
              )
            : state.scrollPagination!;
    if (transactionResult is ApiError) {
      emit(state.copyWith(
        scrollPagination: ScrollPagination<Transaction>(
          itemList: [],
          nextPageKey: null,
          error: (transactionResult as ApiError).error ?? '',
        ),
      ));
      return;
    }

    final transactionParsed =
        (transactionResult as ApiSuccess<PaginationResult<Transaction>>).value;
    final transactions = transactionParsed.data;
    final totalItems = transactionParsed.pagination.totalRow;

    emit(state.copyWith(
      scrollPagination: _calculateScrollPagination(
        lastListingState,
        transactions,
        event.pageKey,
        totalItems,
      ),
    ));
  }

  ScrollPagination<Transaction> _calculateScrollPagination(
    ScrollPagination<Transaction> lastListingState,
    Iterable<Transaction> transactions,
    int pageKey,
    int totalItems,
  ) {
    final isLastPage = pageKey + transactions.length >= totalItems;

    final nextPageKey = isLastPage ? null : pageKey + transactions.length;

    final itemList = [...?lastListingState.itemList, ...transactions];

    return ScrollPagination(
      itemList: itemList,
      nextPageKey: nextPageKey,
      error: null,
    );
  }
}
