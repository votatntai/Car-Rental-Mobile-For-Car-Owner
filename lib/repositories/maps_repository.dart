import 'dart:convert';
import 'dart:developer';

import 'package:car_rental_for_car_owner/commons/constants/networks.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/type.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/models/place.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapsRepository {
  MapsRepository({
    required this.key,
    required BaseOptions options,
    required this.prefs,
  }) : dio = Dio(options);

  final String key;
  final Dio dio;

  final SharedPreferences prefs;

  Future<ApiResponse<List<Place>>> addressSearch(String query) async {
    try {
      final result = await dio.get<JsonObject>(
          'https://maps.googleapis.com/maps/api/place/textsearch/json',
          queryParameters: {
            'key': key,
            'query': query,
            'language': 'vi',
          });

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiResponse.success(
          result.data!['results'].map<Place>((e) => Place.fromJson(e)).toList(),
        );
      }

      return const ApiResponse.error(error: 'unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Place>> coordinateToAddress({
    required double lat,
    required double lng,
  }) async {
    final keyRef = latLngToString(lat: lat, lng: lng);
    final cache = prefs.getString(keyRef);
    if (cache != null) {
      log('$keyRef: $cache');
      return ApiResponse.success(Place.fromJson(jsonDecode(cache)));
    }

    try {
      final result = await dio.get<JsonObject>(
          'https://maps.googleapis.com/maps/api/geocode/json',
          queryParameters: {
            'key': key,
            'latlng': '$lat,$lng',
            'language': 'vi',
          });

      if (result.data != null &&
          result.statusCode == StatusCodes.status200OK &&
          result.data!['results'].isNotEmpty) {
        final place = Place.fromJson(result.data!['results'][0]);

        await prefs.setString(keyRef, jsonEncode(place.toJson()));

        return ApiResponse.success(place);
      }

      return const ApiResponse.error(error: 'unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Place?>> addressToCoordinate({
    required String address,
  }) async {
    final keyRef = address;
    final cache = prefs.getString(keyRef);
    if (cache != null) {
      log('$keyRef: $cache');
      return ApiResponse.success(Place.fromJson(jsonDecode(cache)));
    }

    try {
      final result = await dio.get<JsonObject>(
          'https://maps.googleapis.com/maps/api/place/textsearch/json',
          queryParameters: {
            'key': key,
            'query': address,
            'language': 'vi',
          });

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        if (result.data!['results'].isEmpty) {
          return const ApiResponse.success(null);
        }
        final place = Place.fromJson(result.data!['results'][0]);

        await prefs.setString(keyRef, jsonEncode(place.toJson()));
        return ApiResponse.success(
          place,
        );
      }

      return const ApiResponse.error(error: 'unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<double?> getDistance({
    required double lat1,
    required double lng1,
    required double lat2,
    required double lng2,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
          'https://maps.googleapis.com/maps/api/distancematrix/json',
          queryParameters: {
            'key': key,
            'origins': '$lat1,$lng1',
            'destinations': '$lat2,$lng2',
            'language': 'vi',
          });

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        if (result.data!['rows'][0]['elements'][0]['status'] == 'NOT_FOUND') {
          return null;
        }
        return result.data!['rows'][0]['elements'][0]['distance']['value'] /
            1000;
      }

      return null;
    } on DioError catch (e) {
      return null;
    }
  }

  String latLngToString({
    required double lat,
    required double lng,
  }) {
    return '$lat,$lng';
  }

  double StringToLat(String latLng) {
    return double.parse(latLng.split(',')[0]);
  }

  double StringToLng(String latLng) {
    return double.parse(latLng.split(',')[1]);
  }
}
