part of 'car_tracking_bloc.dart';

@freezed
class CarTrackingEvent with _$CarTrackingEvent {
  const factory CarTrackingEvent.started({
    required List<String> carIds,
  }) = _Started;

  const factory CarTrackingEvent.selectedCarsChanged({
    required List<Car> selectedCars,
  }) = _SelectedCarsChanged;

  const factory CarTrackingEvent.carLocationChanged({
    required TrackingModel trackingModel,
  }) = _CarLocationChanged;
}
