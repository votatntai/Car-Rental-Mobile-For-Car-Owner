// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_address')
  String get formattedAddress => throw _privateConstructorUsedError;
  Geometry get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') String placeId,
      @JsonKey(name: 'formatted_address') String formattedAddress,
      Geometry geometry});

  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? formattedAddress = null,
    Object? geometry = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res> get geometry {
    return $GeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') String placeId,
      @JsonKey(name: 'formatted_address') String formattedAddress,
      Geometry geometry});

  @override
  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res, _$_Place>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? formattedAddress = null,
    Object? geometry = null,
  }) {
    return _then(_$_Place(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place implements _Place {
  const _$_Place(
      {@JsonKey(name: 'place_id') required this.placeId,
      @JsonKey(name: 'formatted_address') required this.formattedAddress,
      required this.geometry});

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final String placeId;
  @override
  @JsonKey(name: 'formatted_address')
  final String formattedAddress;
  @override
  final Geometry geometry;

  @override
  String toString() {
    return 'Place(placeId: $placeId, formattedAddress: $formattedAddress, geometry: $geometry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Place &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, formattedAddress, geometry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      __$$_PlaceCopyWithImpl<_$_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {@JsonKey(name: 'place_id')
          required final String placeId,
      @JsonKey(name: 'formatted_address')
          required final String formattedAddress,
      required final Geometry geometry}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  @JsonKey(name: 'place_id')
  String get placeId;
  @override
  @JsonKey(name: 'formatted_address')
  String get formattedAddress;
  @override
  Geometry get geometry;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      throw _privateConstructorUsedError;
}
