part of 'car_tracking_bloc.dart';

@freezed
class CarTrackingState with _$CarTrackingState {
  const factory CarTrackingState({
    required List<Car> myCars,
    required List<Car> selectedCars,
    required Set<Marker> markers,
  }) = _CarTrackingState;
}
