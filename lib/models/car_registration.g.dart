// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarRegistration _$$_CarRegistrationFromJson(Map<String, dynamic> json) =>
    _$_CarRegistration(
      id: json['id'] as String,
      name: json['name'] as String?,
      licensePlate: json['licensePlate'] as String,
      transmissionType: json['transmissionType'] as String,
      fuelType: json['fuelType'] as String,
      seater: json['seater'] as int,
      price: (json['price'] as num).toDouble(),
      fuelConsumption: json['fuelConsumption'] as String,
      yearOfManufacture: json['yearOfManufacture'] as int,
      productionCompany: json['productionCompany'] as String,
      location: json['location'] as String,
      model: json['model'] as String,
      chassis: json['chassis'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      description: json['description'] as String?,
      status: json['status'] as bool,
      carOwner: CarOwner.fromJson(json['carOwner'] as Map<String, dynamic>),
      additionalCharge: AdditionalCharge.fromJson(
          json['additionalCharge'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CarRegistrationToJson(_$_CarRegistration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'licensePlate': instance.licensePlate,
      'transmissionType': instance.transmissionType,
      'fuelType': instance.fuelType,
      'seater': instance.seater,
      'price': instance.price,
      'fuelConsumption': instance.fuelConsumption,
      'yearOfManufacture': instance.yearOfManufacture,
      'productionCompany': instance.productionCompany,
      'location': instance.location,
      'model': instance.model,
      'chassis': instance.chassis,
      'createAt': instance.createAt.toIso8601String(),
      'description': instance.description,
      'status': instance.status,
      'carOwner': instance.carOwner,
      'additionalCharge': instance.additionalCharge,
      'images': instance.images,
    };
