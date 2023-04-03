// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackingModel _$TrackingModelFromJson(Map<String, dynamic> json) {
  return _TrackingModel.fromJson(json);
}

/// @nodoc
mixin _$TrackingModel {
  @JsonKey(name: 'Latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'Longitude')
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'CarId')
  String get carId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackingModelCopyWith<TrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingModelCopyWith<$Res> {
  factory $TrackingModelCopyWith(
          TrackingModel value, $Res Function(TrackingModel) then) =
      _$TrackingModelCopyWithImpl<$Res, TrackingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Latitude') double latitude,
      @JsonKey(name: 'Longitude') double longitude,
      @JsonKey(name: 'CarId') String carId});
}

/// @nodoc
class _$TrackingModelCopyWithImpl<$Res, $Val extends TrackingModel>
    implements $TrackingModelCopyWith<$Res> {
  _$TrackingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? carId = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackingModelCopyWith<$Res>
    implements $TrackingModelCopyWith<$Res> {
  factory _$$_TrackingModelCopyWith(
          _$_TrackingModel value, $Res Function(_$_TrackingModel) then) =
      __$$_TrackingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Latitude') double latitude,
      @JsonKey(name: 'Longitude') double longitude,
      @JsonKey(name: 'CarId') String carId});
}

/// @nodoc
class __$$_TrackingModelCopyWithImpl<$Res>
    extends _$TrackingModelCopyWithImpl<$Res, _$_TrackingModel>
    implements _$$_TrackingModelCopyWith<$Res> {
  __$$_TrackingModelCopyWithImpl(
      _$_TrackingModel _value, $Res Function(_$_TrackingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? carId = null,
  }) {
    return _then(_$_TrackingModel(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrackingModel implements _TrackingModel {
  _$_TrackingModel(
      {@JsonKey(name: 'Latitude') required this.latitude,
      @JsonKey(name: 'Longitude') required this.longitude,
      @JsonKey(name: 'CarId') required this.carId});

  factory _$_TrackingModel.fromJson(Map<String, dynamic> json) =>
      _$$_TrackingModelFromJson(json);

  @override
  @JsonKey(name: 'Latitude')
  final double latitude;
  @override
  @JsonKey(name: 'Longitude')
  final double longitude;
  @override
  @JsonKey(name: 'CarId')
  final String carId;

  @override
  String toString() {
    return 'TrackingModel(latitude: $latitude, longitude: $longitude, carId: $carId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackingModel &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.carId, carId) || other.carId == carId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, carId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackingModelCopyWith<_$_TrackingModel> get copyWith =>
      __$$_TrackingModelCopyWithImpl<_$_TrackingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackingModelToJson(
      this,
    );
  }
}

abstract class _TrackingModel implements TrackingModel {
  factory _TrackingModel(
      {@JsonKey(name: 'Latitude') required final double latitude,
      @JsonKey(name: 'Longitude') required final double longitude,
      @JsonKey(name: 'CarId') required final String carId}) = _$_TrackingModel;

  factory _TrackingModel.fromJson(Map<String, dynamic> json) =
      _$_TrackingModel.fromJson;

  @override
  @JsonKey(name: 'Latitude')
  double get latitude;
  @override
  @JsonKey(name: 'Longitude')
  double get longitude;
  @override
  @JsonKey(name: 'CarId')
  String get carId;
  @override
  @JsonKey(ignore: true)
  _$$_TrackingModelCopyWith<_$_TrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
