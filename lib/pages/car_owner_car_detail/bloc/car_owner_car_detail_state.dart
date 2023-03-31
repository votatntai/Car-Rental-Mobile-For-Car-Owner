part of 'car_owner_car_detail_bloc.dart';

@freezed
class CarOwnerCarDetailState with _$CarOwnerCarDetailState {
  const factory CarOwnerCarDetailState.initial() = _Initial;
  const factory CarOwnerCarDetailState.loading() = _Loading;
  const factory CarOwnerCarDetailState.success({
    required Car car,
  }) = _Success;
  const factory CarOwnerCarDetailState.failure({required String message}) =
      _Failure;
}
