part of 'feedback_list_bloc.dart';

@freezed
class FeedbackListState with _$FeedbackListState {
  const factory FeedbackListState({
    ScrollPagination<FeedbackModel>? scrollPagination,
  }) = _FeedbackListState;
}
