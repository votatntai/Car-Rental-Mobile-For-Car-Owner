part of 'car_owner_order_detail_bloc.dart';

@freezed
class CarOwnerOrderDetailState with _$CarOwnerOrderDetailState {
  const factory CarOwnerOrderDetailState.initial() = _Initial;
  const factory CarOwnerOrderDetailState.loading() = _Loading;
  const factory CarOwnerOrderDetailState.success({
    required Order order,
  }) = _Success;
  const factory CarOwnerOrderDetailState.failure({required String message}) =
      _Failure;
}
