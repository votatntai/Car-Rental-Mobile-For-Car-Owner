part of 'customer_detail_bloc.dart';

@freezed
class CustomerDetailState with _$CustomerDetailState {
  const factory CustomerDetailState.initial() = _Initial;
  const factory CustomerDetailState.loading() = _Loading;
  const factory CustomerDetailState.success({
    required Customer customer,
  }) = _Success;
  const factory CustomerDetailState.failure({required String message}) =
      _Failure;
}
