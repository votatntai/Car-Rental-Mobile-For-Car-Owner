part of 'car_owner_home_bloc.dart';

@freezed
class CarOwnerHomeState with _$CarOwnerHomeState {
  const factory CarOwnerHomeState.initial() = _Initial;
  const factory CarOwnerHomeState.loading() = _Loading;
  const factory CarOwnerHomeState.success({
    required List<Car> myCars,
    required List<Order> pendingOrders,
    required List<CarRegistration> carRegistrations,
  }) = _Success;
  const factory CarOwnerHomeState.failure({
    required String message,
  }) = _Failure;
}
