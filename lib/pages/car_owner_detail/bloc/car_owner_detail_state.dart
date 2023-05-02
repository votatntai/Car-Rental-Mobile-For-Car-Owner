part of 'car_owner_detail_bloc.dart';

@freezed
class CarOwnerDetailState with _$CarOwnerDetailState {
  const factory CarOwnerDetailState.initial() = _Initial;
  const factory CarOwnerDetailState.loading() = _Loading;
  const factory CarOwnerDetailState.success({
    required CarOwner carOwner,
    required List<Car> cars,
  }) = _Success;
  const factory CarOwnerDetailState.failure({required String message}) =
      _Failure;
}
