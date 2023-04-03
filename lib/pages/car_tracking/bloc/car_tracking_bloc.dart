import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/pages/car_tracking/models/car_location_model.dart';
import 'package:car_rental_for_car_owner/repositories/car_repository.dart';
import 'package:car_rental_for_car_owner/repositories/tracking_model.dart';
import 'package:car_rental_for_car_owner/repositories/tracking_repository.dart';
import 'package:car_rental_for_car_owner/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'car_tracking_event.dart';
part 'car_tracking_state.dart';
part 'car_tracking_bloc.freezed.dart';

class CarTrackingBloc extends Bloc<CarTrackingEvent, CarTrackingState> {
  CarTrackingBloc({
    required this.carRepository,
    required this.userRepository,
    required this.trackingRepository,
  }) : super(const CarTrackingState(
          myCars: [],
          selectedCars: [],
          markers: {},
        )) {
    on<_Started>(_onStarted);
    on<_SelectedCarsChanged>(_onSelectedCarsChanged);
    on<_CarLocationChanged>(_onCarLocationChanged);

    _carLocationSubscription =
        trackingRepository.carLocationController.stream.listen((event) {
      add(_CarLocationChanged(trackingModel: event));
    });
  }

  final CarRepository carRepository;
  final UserRepository userRepository;
  final TrackingRepository trackingRepository;

  late final StreamSubscription<TrackingModel> _carLocationSubscription;

  BitmapDescriptor? markerBitmap;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarTrackingState> emit,
  ) async {
    markerBitmap = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(),
      'assets/car_with_driver_80.png',
    );
    final carOwner = await userRepository.getCarOwner();

    if (carOwner == null) {
      return;
    }

    final myCarsResult = await carRepository.myCars(
      carOwnerId: carOwner.id,
    );

    if (myCarsResult is ApiError) {
      return;
    }

    final myCars = (myCarsResult as ApiSuccess).value;

    final selectedCars =
        myCars.where((car) => event.carIds.contains(car.id)).toList();

    emit(
      state.copyWith(
        myCars: myCars,
        selectedCars: selectedCars,
        markers: getDefaultMarkers(
          myCars: myCars,
          selectedCars: selectedCars,
          markers: state.markers,
        ),
      ),
    );
  }

  FutureOr<void> _onSelectedCarsChanged(
    _SelectedCarsChanged event,
    Emitter<CarTrackingState> emit,
  ) {
    emit(
      state.copyWith(
        selectedCars: event.selectedCars,
        markers: getDefaultMarkers(
          myCars: state.myCars,
          selectedCars: event.selectedCars,
          markers: state.markers,
        ),
      ),
    );
  }

  FutureOr<void> _onCarLocationChanged(
    _CarLocationChanged event,
    Emitter<CarTrackingState> emit,
  ) async {
    final markers = Set<Marker>.from(state.markers);

    if (markers
        .toList()
        .where((element) => element.markerId.value == event.trackingModel.carId)
        .isNotEmpty) {
      markers.remove(event.trackingModel);

      final cars = state.myCars
          .where((element) => element.id == event.trackingModel.carId);

      if (cars.isNotEmpty) {
        final car = cars.first;

        markers.add(
          Marker(
            markerId: MarkerId(car.id),
            position: LatLng(
              event.trackingModel.latitude,
              event.trackingModel.longitude,
            ),
            infoWindow: InfoWindow(
              title: car.name ?? '',
              snippet: car.licensePlate,
            ),
            icon: markerBitmap!,
          ),
        );
      }

      emit(
        state.copyWith(
          markers: markers,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _carLocationSubscription.cancel();
    return super.close();
  }

  Set<Marker> getDefaultMarkers({
    required List<Car> myCars,
    required List<Car> selectedCars,
    required Set<Marker> markers,
  }) {
    final markers = <Marker>{};

    if (markerBitmap == null) {
      return markers;
    }

    if (myCars.isEmpty) {
      return markers;
    }

    if (selectedCars.isEmpty) {
      for (final car in myCars) {
        markers.add(
          Marker(
            markerId: MarkerId(car.id),
            position: LatLng(
              car.location.latitude,
              car.location.longitude,
            ),
            infoWindow: InfoWindow(
              title: car.name ?? '',
              snippet: car.licensePlate,
            ),
            icon: markerBitmap!,
          ),
        );
      }
      return markers;
    }

    for (final car in selectedCars) {
      final marker =
          markers.toList().where((element) => element.markerId.value == car.id);

      if (marker.isNotEmpty) {
        markers.add(marker.first);
      } else {
        markers.add(
          Marker(
            markerId: MarkerId(car.id),
            position: LatLng(
              car.location.latitude,
              car.location.longitude,
            ),
            infoWindow: InfoWindow(
              title: car.name ?? '',
              snippet: car.licensePlate,
            ),
            icon: markerBitmap!,
          ),
        );
      }
    }
    return markers;
  }
}
