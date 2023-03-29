import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/place.dart';
import 'package:car_rental_for_car_owner/repositories/maps_repository.dart';
import 'package:flutter/material.dart';

class LocationText extends StatelessWidget {
  const LocationText({
    super.key,
    required this.longitude,
    required this.latitude,
    this.text,
    this.style,
  });

  final double longitude;
  final double latitude;
  final String? text;

  final TextStyle? style;

  Future<String> getAddress(
    double longitude,
    double latitude,
  ) async {
    final placeResult = await getIt.get<MapsRepository>().coordinateToAddress(
          lat: latitude,
          lng: longitude,
        );

    if (placeResult is ApiSuccess<Place>) {
      final place = (placeResult).value;

      return place.formattedAddress;
    }

    return '';
  }

  final defaultStyle = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: CustomColors.jetBlack,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAddress(longitude, latitude),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(
            '${text ?? ''}${snapshot.data ?? ''}',
            style: style ?? defaultStyle,
          );
        }
        return Text(
          '',
          style: style ?? defaultStyle,
        );
      },
    );
  }
}
