part of 'car_owner_driver_detail_bloc.dart';

@freezed
class CarOwnerDriverDetailState with _$CarOwnerDriverDetailState {
  const factory CarOwnerDriverDetailState.initial() = _Initial;
  const factory CarOwnerDriverDetailState.loading() = _Loading;
  const factory CarOwnerDriverDetailState.success({required Driver driver}) =
      _Success;
  const factory CarOwnerDriverDetailState.failure({required String message}) =
      _Failure;
}
