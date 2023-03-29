// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_charge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdditionalCharge _$AdditionalChargeFromJson(Map<String, dynamic> json) {
  return _AdditionalCharge.fromJson(json);
}

/// @nodoc
mixin _$AdditionalCharge {
  String get id => throw _privateConstructorUsedError;
  int get maximumDistance => throw _privateConstructorUsedError;
  double get distanceSurcharge => throw _privateConstructorUsedError;
  double get timeSurcharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalChargeCopyWith<AdditionalCharge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalChargeCopyWith<$Res> {
  factory $AdditionalChargeCopyWith(
          AdditionalCharge value, $Res Function(AdditionalCharge) then) =
      _$AdditionalChargeCopyWithImpl<$Res, AdditionalCharge>;
  @useResult
  $Res call(
      {String id,
      int maximumDistance,
      double distanceSurcharge,
      double timeSurcharge});
}

/// @nodoc
class _$AdditionalChargeCopyWithImpl<$Res, $Val extends AdditionalCharge>
    implements $AdditionalChargeCopyWith<$Res> {
  _$AdditionalChargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maximumDistance = null,
    Object? distanceSurcharge = null,
    Object? timeSurcharge = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      maximumDistance: null == maximumDistance
          ? _value.maximumDistance
          : maximumDistance // ignore: cast_nullable_to_non_nullable
              as int,
      distanceSurcharge: null == distanceSurcharge
          ? _value.distanceSurcharge
          : distanceSurcharge // ignore: cast_nullable_to_non_nullable
              as double,
      timeSurcharge: null == timeSurcharge
          ? _value.timeSurcharge
          : timeSurcharge // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdditionalChargeCopyWith<$Res>
    implements $AdditionalChargeCopyWith<$Res> {
  factory _$$_AdditionalChargeCopyWith(
          _$_AdditionalCharge value, $Res Function(_$_AdditionalCharge) then) =
      __$$_AdditionalChargeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int maximumDistance,
      double distanceSurcharge,
      double timeSurcharge});
}

/// @nodoc
class __$$_AdditionalChargeCopyWithImpl<$Res>
    extends _$AdditionalChargeCopyWithImpl<$Res, _$_AdditionalCharge>
    implements _$$_AdditionalChargeCopyWith<$Res> {
  __$$_AdditionalChargeCopyWithImpl(
      _$_AdditionalCharge _value, $Res Function(_$_AdditionalCharge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maximumDistance = null,
    Object? distanceSurcharge = null,
    Object? timeSurcharge = null,
  }) {
    return _then(_$_AdditionalCharge(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      maximumDistance: null == maximumDistance
          ? _value.maximumDistance
          : maximumDistance // ignore: cast_nullable_to_non_nullable
              as int,
      distanceSurcharge: null == distanceSurcharge
          ? _value.distanceSurcharge
          : distanceSurcharge // ignore: cast_nullable_to_non_nullable
              as double,
      timeSurcharge: null == timeSurcharge
          ? _value.timeSurcharge
          : timeSurcharge // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdditionalCharge implements _AdditionalCharge {
  _$_AdditionalCharge(
      {required this.id,
      required this.maximumDistance,
      required this.distanceSurcharge,
      required this.timeSurcharge});

  factory _$_AdditionalCharge.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalChargeFromJson(json);

  @override
  final String id;
  @override
  final int maximumDistance;
  @override
  final double distanceSurcharge;
  @override
  final double timeSurcharge;

  @override
  String toString() {
    return 'AdditionalCharge(id: $id, maximumDistance: $maximumDistance, distanceSurcharge: $distanceSurcharge, timeSurcharge: $timeSurcharge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdditionalCharge &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.maximumDistance, maximumDistance) ||
                other.maximumDistance == maximumDistance) &&
            (identical(other.distanceSurcharge, distanceSurcharge) ||
                other.distanceSurcharge == distanceSurcharge) &&
            (identical(other.timeSurcharge, timeSurcharge) ||
                other.timeSurcharge == timeSurcharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, maximumDistance, distanceSurcharge, timeSurcharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdditionalChargeCopyWith<_$_AdditionalCharge> get copyWith =>
      __$$_AdditionalChargeCopyWithImpl<_$_AdditionalCharge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalChargeToJson(
      this,
    );
  }
}

abstract class _AdditionalCharge implements AdditionalCharge {
  factory _AdditionalCharge(
      {required final String id,
      required final int maximumDistance,
      required final double distanceSurcharge,
      required final double timeSurcharge}) = _$_AdditionalCharge;

  factory _AdditionalCharge.fromJson(Map<String, dynamic> json) =
      _$_AdditionalCharge.fromJson;

  @override
  String get id;
  @override
  int get maximumDistance;
  @override
  double get distanceSurcharge;
  @override
  double get timeSurcharge;
  @override
  @JsonKey(ignore: true)
  _$$_AdditionalChargeCopyWith<_$_AdditionalCharge> get copyWith =>
      throw _privateConstructorUsedError;
}
