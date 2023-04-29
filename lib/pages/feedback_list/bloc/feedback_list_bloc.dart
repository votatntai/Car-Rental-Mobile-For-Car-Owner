import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/feedback.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/models/scroll_pagination.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/feedback_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_list_event.dart';
part 'feedback_list_state.dart';
part 'feedback_list_bloc.freezed.dart';

class FeedbackListBloc extends Bloc<FeedbackListEvent, FeedbackListState> {
  FeedbackListBloc({
    required this.feedbackRepository,
    required this.carRepository,
  }) : super(const FeedbackListState()) {
    on<_Started>(_onStarted);
    on<_PageRequested>(_onPageRequested);
  }

  final pageSize = 10;

  final FeedbackRepository feedbackRepository;
  final CarRepository carRepository;

  String? driverId;
  String? carId;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FeedbackListState> emit,
  ) async {
    // if (event.carId != null) {
    // } else if (event.driverId != null) {}

    driverId = event.driverId;
    carId = event.carId;
  }

  FutureOr<void> _onPageRequested(
    _PageRequested event,
    Emitter<FeedbackListState> emit,
  ) async {
    final page = (event.pageKey / pageSize).floor() + 1;

    ApiResponse<PaginationResult<FeedbackModel>>? feedbackResult;

    if (driverId != null && driverId?.isNotEmpty == true) {
      feedbackResult = await feedbackRepository.feedbacksByDriver(
        driver: driverId!,
        pageNumber: page,
        pageSize: pageSize,
      );
    }

    if (carId != null && carId?.isNotEmpty == true) {
      feedbackResult = await feedbackRepository.feedbacksByCar(
        carId: carId!,
        pageNumber: page,
        pageSize: pageSize,
      );
    }

    if (feedbackResult is ApiError) {
      emit(state.copyWith(
        scrollPagination: ScrollPagination<FeedbackModel>(
          itemList: [],
          nextPageKey: null,
          error: (feedbackResult as ApiError).error ?? '',
        ),
      ));
      return;
    }

    final lastListingState =
        event.pageKey == 0 || state.scrollPagination == null
            ? ScrollPagination<FeedbackModel>(
                nextPageKey: 0,
                error: null,
                itemList: [],
              )
            : state.scrollPagination!;

    final feedbackParsed =
        (feedbackResult as ApiSuccess<PaginationResult<FeedbackModel>>).value;
    final feedbacks = feedbackParsed.data;
    final totalItems = feedbackParsed.pagination.totalRow;

    emit(
      state.copyWith(
        scrollPagination: _calculateScrollPagination(
          lastListingState,
          feedbacks,
          event.pageKey,
          totalItems,
        ),
      ),
    );
  }

  ScrollPagination<FeedbackModel> _calculateScrollPagination(
    ScrollPagination<FeedbackModel> lastListingState,
    Iterable<FeedbackModel> feedbacks,
    int pageKey,
    int totalItems,
  ) {
    final isLastPage = pageKey + feedbacks.length >= totalItems;

    final nextPageKey = isLastPage ? null : pageKey + feedbacks.length;

    final itemList = [...?lastListingState.itemList, ...feedbacks];

    return ScrollPagination(
      itemList: itemList,
      nextPageKey: nextPageKey,
      error: null,
    );
  }
}
