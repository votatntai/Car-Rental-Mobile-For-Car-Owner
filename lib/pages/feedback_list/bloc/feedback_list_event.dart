part of 'feedback_list_bloc.dart';

@freezed
class FeedbackListEvent with _$FeedbackListEvent {
  const factory FeedbackListEvent.started({
    String? carId,
    String? driverId,
  }) = _Started;

  const factory FeedbackListEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;
}
