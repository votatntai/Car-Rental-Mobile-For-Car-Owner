import 'dart:async';

import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/pages/car_tracking/bloc/car_tracking_bloc.dart';
import 'package:car_rental_for_car_owner/repositories/tracking_model.dart';
import 'package:car_rental_for_car_owner/repositories/tracking_repository.dart';
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

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CarTrackingBloc, CarTrackingState>(
      listenWhen: (previous, current) {
        return previous.myCars != current.myCars ||
            previous.selectedCars != current.selectedCars;
      },
      listener: (context, state) async {
        final myCars = state.myCars;
        final selectedCars = state.selectedCars;
        final markers = state.markers;

        final controller = await _controller.future;

        if (markers.isNotEmpty) {
          controller.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(
                  markers.first.position.latitude,
                  markers.first.position.longitude,
                ),
                zoom: 13,
              ),
            ),
          );

          return;
        }

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
        final markers = state.markers;

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
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(10.8230989, 106.6296638),
                      zoom: 13,
                    ),
                    markers: markers,
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
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
