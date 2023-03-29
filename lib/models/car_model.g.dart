// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarModel _$$_CarModelFromJson(Map<String, dynamic> json) => _$_CarModel(
      id: json['id'] as String,
      name: json['name'] as String,
      transmissionType: json['transmissionType'] as String,
      fuelType: json['fuelType'] as String,
      chassis: json['chassis'] as String,
      seater: json['seater'] as int,
      yearOfManufacture: json['yearOfManufacture'] as int,
      fuelConsumption: json['fuelConsumption'] as String,
    );

Map<String, dynamic> _$$_CarModelToJson(_$_CarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transmissionType': instance.transmissionType,
      'fuelType': instance.fuelType,
      'chassis': instance.chassis,
      'seater': instance.seater,
      'yearOfManufacture': instance.yearOfManufacture,
      'fuelConsumption': instance.fuelConsumption,
    };
