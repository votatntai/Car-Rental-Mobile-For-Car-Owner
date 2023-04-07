// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarRegistrationModel _$$_CarRegistrationModelFromJson(
        Map<String, dynamic> json) =>
    _$_CarRegistrationModel(
      name: json['name'] as String,
      licensePlate: json['licensePlate'] as String,
      transmissionType: json['transmissionType'] as String,
      fuelType: json['fuelType'] as String,
      model: json['model'] as String,
      seater: json['seater'] as int,
      price: (json['price'] as num).toDouble(),
      fuelConsumption: json['fuelConsumption'] as String,
      chassis: json['chassis'] as String,
      yearOfManufacture: json['yearOfManufacture'] as int,
      productionCompany: json['productionCompany'] as String,
      location: json['location'] as String,
      type: json['type'] as String,
      description: json['description'] as String?,
      additionalCharge: AdditionalChargeModel.fromJson(
          json['additionalCharge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CarRegistrationModelToJson(
        _$_CarRegistrationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'licensePlate': instance.licensePlate,
      'transmissionType': instance.transmissionType,
      'fuelType': instance.fuelType,
      'model': instance.model,
      'seater': instance.seater,
      'price': instance.price,
      'fuelConsumption': instance.fuelConsumption,
      'chassis': instance.chassis,
      'yearOfManufacture': instance.yearOfManufacture,
      'productionCompany': instance.productionCompany,
      'location': instance.location,
      'type': instance.type,
      'description': instance.description,
      'additionalCharge': instance.additionalCharge,
    };
