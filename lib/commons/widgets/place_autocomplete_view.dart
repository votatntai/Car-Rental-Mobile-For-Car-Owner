import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/debouncer.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/place.dart';
import 'package:car_rental_for_car_owner/repositories/maps_repository.dart';
import 'package:flutter/material.dart';

class PlaceAutocompleteView extends StatefulWidget {
  const PlaceAutocompleteView({
    super.key,
    required this.onSelected,
    required this.text,
    required this.debouncer,
  });

  final void Function(String) onSelected;
  final String text;
  final Debouncer debouncer;

  @override
  State<PlaceAutocompleteView> createState() => _PlaceAutocompleteViewState();
}

class _PlaceAutocompleteViewState extends State<PlaceAutocompleteView> {
  Future<List<String>> loadPlaces(String input) async {
    if (input.isEmpty) return <String>[];

    final mapsRepo = getIt.get<MapsRepository>();
    final result = await mapsRepo.addressSearch(input);

    if (result is ApiSuccess) {
      final places = (result as ApiSuccess<List<Place>>).value;
      return places.map((place) => place.formattedAddress).toList();
    }

    return <String>[];
  }

  List<String> places = [];

  @override
  void initState() {
    widget.debouncer.run(() {
      loadPlaces(widget.text).then((value) {
        setState(() {
          places = value;
        });
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) return const SizedBox();
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          final place = places[index];
          return InkWell(
            onTap: () => widget.onSelected.call(place),
            child: Padding(
              padding: const EdgeInsets.only(
                left: s08,
                right: s16,
              ),
              child: Text(
                place,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
        itemCount: places.length,
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
