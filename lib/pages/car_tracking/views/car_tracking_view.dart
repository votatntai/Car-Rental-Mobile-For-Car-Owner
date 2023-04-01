import 'dart:async';

import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/pages/car_tracking/bloc/car_tracking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class CarTrackingView extends StatefulWidget {
  const CarTrackingView({super.key});

  @override
  State<CarTrackingView> createState() => _CarTrackingViewState();
}

class _CarTrackingViewState extends State<CarTrackingView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Future<Set<Marker>> getMarkers({
    required List<Car> myCars,
    required List<Car> selectedCars,
  }) async {
    final markers = <Marker>{};
    final markerBitmap = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(),
      'assets/car_with_driver_80.png',
    );

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
            // icon: markerBitmap,
          ),
        );
      }
      return markers;
    }

    for (final car in selectedCars) {
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
          // icon: markerBitmap,
        ),
      );
    }
    return markers;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    getMakerIcon();
    super.initState();
  }

  getMakerIcon() async {}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CarTrackingBloc, CarTrackingState>(
      listener: (context, state) async {
        final myCars = state.myCars;
        final selectedCars = state.selectedCars;

        final controller = await _controller.future;

        if (myCars.isEmpty) {
          controller.animateCamera(
            CameraUpdate.newCameraPosition(
              const CameraPosition(
                target: LatLng(10.8230989, 106.6296638),
                zoom: 13,
              ),
            ),
          );

          return;
        }

        if (selectedCars.isEmpty) {
          controller.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(
                  myCars.first.location.latitude,
                  myCars.first.location.longitude,
                ),
                zoom: 13,
              ),
            ),
          );

          return;
        }

        controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(
                selectedCars.first.location.latitude,
                selectedCars.first.location.longitude,
              ),
              zoom: 13,
            ),
          ),
        );
      },
      builder: (context, state) {
        final myCars = state.myCars;
        final selectedCars = state.selectedCars;

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Vị trí xe',
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MultiSelectDialogField(
                  confirmText: const Text('Xác nhận'),
                  cancelText: const Text('Hủy'),
                  buttonText: const Text('Chọn xe'),
                  title: const Text('Chọn xe'),
                  initialValue: selectedCars,
                  items: myCars
                      .map((e) => MultiSelectItem(e, e.name ?? ''))
                      .toList(),
                  listType: MultiSelectListType.LIST,
                  onConfirm: (values) {
                    context.read<CarTrackingBloc>().add(
                          CarTrackingEvent.selectedCarsChanged(
                            selectedCars: values,
                          ),
                        );
                  },
                ),
                const SizedBox(height: s08),
                Expanded(
                  child: FutureBuilder(
                    future: getMarkers(
                      myCars: myCars,
                      selectedCars: selectedCars,
                    ),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: const CameraPosition(
                            target: LatLng(10.8230989, 106.6296638),
                            zoom: 13,
                          ),
                          markers: snapshot.data as Set<Marker>,
                          myLocationButtonEnabled: true,
                          myLocationEnabled: true,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
