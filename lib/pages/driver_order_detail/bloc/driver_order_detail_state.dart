part of 'driver_order_detail_bloc.dart';

@freezed
class DriverOrderDetailState with _$DriverOrderDetailState {
  const factory DriverOrderDetailState.initial() = _Initial;
  const factory DriverOrderDetailState.loading() = _Loading;
  const factory DriverOrderDetailState.success({
    required Order order,
    FeedbackModel? feedback,
  }) = _Success;
  const factory DriverOrderDetailState.failure({required String message}) =
      _Failure;
}
