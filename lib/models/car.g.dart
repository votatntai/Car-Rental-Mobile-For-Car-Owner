// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      id: json['id'] as String,
      name: json['name'] as String?,
      licensePlate: json['licensePlate'] as String,
      price: (json['price'] as num).toDouble(),
      rented: (json['rented'] as num).toDouble(),
      description: json['description'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedBacks: (json['feedBacks'] as List<dynamic>?)
          ?.map((e) => FeedbackModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      carFeatures: (json['carFeatures'] as List<dynamic>?)
          ?.map((e) => CarFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
      carTypes: (json['carTypes'] as List<dynamic>?)
          ?.map((e) => CarType.fromJson(e as Map<String, dynamic>))
          .toList(),
      productionCompany: json['productionCompany'] == null
          ? null
          : ProductionCompany.fromJson(
              json['productionCompany'] as Map<String, dynamic>),
      model: CarModel.fromJson(json['model'] as Map<String, dynamic>),
      carOwner: json['carOwner'] == null
          ? null
          : CarOwner.fromJson(json['carOwner'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : Driver.fromJson(json['driver'] as Map<String, dynamic>),
      location: json['location'] == null
          ? const Location(id: '', longitude: 106.660172, latitude: 10.762622)
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      additionalCharge: AdditionalCharge.fromJson(
          json['additionalCharge'] as Map<String, dynamic>),
      star: (json['star'] as num).toDouble(),
      status: json['status'] as String,
      receiveStartTime: const TimeOfDayConverter()
          .fromJson(json['receiveStartTime'] as String),
      receiveEndTime:
          const TimeOfDayConverter().fromJson(json['receiveEndTime'] as String),
      returnStartTime: const TimeOfDayConverter()
          .fromJson(json['returnStartTime'] as String),
      returnEndTime:
          const TimeOfDayConverter().fromJson(json['returnEndTime'] as String),
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'licensePlate': instance.licensePlate,
      'price': instance.price,
      'rented': instance.rented,
      'description': instance.description,
      'images': instance.images,
      'feedBacks': instance.feedBacks,
      'carFeatures': instance.carFeatures,
      'carTypes': instance.carTypes,
      'productionCompany': instance.productionCompany,
      'model': instance.model,
      'carOwner': instance.carOwner,
      'driver': instance.driver,
      'location': instance.location,
      'additionalCharge': instance.additionalCharge,
      'star': instance.star,
      'status': instance.status,
      'receiveStartTime':
          const TimeOfDayConverter().toJson(instance.receiveStartTime),
      'receiveEndTime':
          const TimeOfDayConverter().toJson(instance.receiveEndTime),
      'returnStartTime':
          const TimeOfDayConverter().toJson(instance.returnStartTime),
      'returnEndTime':
          const TimeOfDayConverter().toJson(instance.returnEndTime),
    };
