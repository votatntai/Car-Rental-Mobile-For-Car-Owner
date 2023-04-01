import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({
    Key? key,
    required this.longitude,
    required this.latitude,
    // required this.mapsRepository,
  }) : super(key: key);

  final double longitude;
  final double latitude;
  // final MapsRepository mapsRepository;

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  // Place? place;

  @override
  void initState() {
    // if (context.mounted) {
    //   widget.mapsRepository
    //       .addressToCoordinate(address: widget.address)
    //       .then((value) {
    //     if (value is ApiSuccess<Place?>) {
    //       setState(() {
    //         place = value.value;
    //       });
    //     }
    //   });
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if (place == null) return const SizedBox();
    return Column(
      children: [
        const SizedBox(height: s08),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: SizedBox(
            height: 180,
            width: double.infinity,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  widget.latitude,
                  widget.longitude,
                ),
                zoom: 14,
              ),
              zoomControlsEnabled: false,
              markers: {
                Marker(
                  markerId: MarkerId(
                    DateTime.now().millisecondsSinceEpoch.toString(),
                  ),
                  position: LatLng(
                    widget.latitude,
                    widget.longitude,
                  ),
                ),
              },
            ),
          ),
        ),
      ],
    );
  }
}
