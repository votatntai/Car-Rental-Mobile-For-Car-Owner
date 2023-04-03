import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/notification.dart';
import 'package:car_rental_for_car_owner/models/pagination_result.dart';
import 'package:car_rental_for_car_owner/models/scroll_pagination.dart';
import 'package:car_rental_for_car_owner/repositories/notification_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_notification_event.dart';
part 'car_owner_notification_state.dart';
part 'car_owner_notification_bloc.freezed.dart';

class CarOwnerNotificationBloc
    extends Bloc<CarOwnerNotificationEvent, CarOwnerNotificationState> {
  CarOwnerNotificationBloc({
    required this.notificationRepository,
  }) : super(const CarOwnerNotificationState()) {
    on<_Started>(_onStared);
    on<_PageRequested>(_onPageRequested);
  }

  final pageSize = 10;

  final NotificationRepository notificationRepository;

  FutureOr<void> _onStared(
    _Started event,
    Emitter<CarOwnerNotificationState> emit,
  ) async {}

  FutureOr<void> _onPageRequested(
    _PageRequested event,
    Emitter<CarOwnerNotificationState> emit,
  ) async {
    final page = (event.pageKey / pageSize).floor() + 1;

    final notificationResult = await notificationRepository.notifications(
      pageNumber: page,
      pageSize: pageSize,
    );

    if (notificationResult is ApiError) {
      emit(state.copyWith(
        scrollPagination: ScrollPagination<Notification>(
          itemList: [],
          nextPageKey: null,
          error: (notificationResult as ApiError).error ?? '',
        ),
      ));
      return;
    }

    final lastListingState =
        event.pageKey == 0 || state.scrollPagination == null
            ? ScrollPagination<Notification>(
                nextPageKey: 0,
                error: null,
                itemList: [],
              )
            : state.scrollPagination!;

    final notificationParsed =
        (notificationResult as ApiSuccess<PaginationResult<Notification>>)
            .value;
    final notifications = notificationParsed.data;
    final totalItems = notificationParsed.pagination.totalRow;

    emit(state.copyWith(
      scrollPagination: _calculateScrollPagination(
        lastListingState,
        notifications,
        event.pageKey,
        totalItems,
      ),
    ));
  }

  ScrollPagination<Notification> _calculateScrollPagination(
    ScrollPagination<Notification> lastListingState,
    Iterable<Notification> notifications,
    int pageKey,
    int totalItems,
  ) {
    final isLastPage = pageKey + notifications.length >= totalItems;

    final nextPageKey = isLastPage ? null : pageKey + notifications.length;

    final itemList = [...?lastListingState.itemList, ...notifications];

    return ScrollPagination(
      itemList: itemList,
      nextPageKey: nextPageKey,
      error: null,
    );
  }
}
