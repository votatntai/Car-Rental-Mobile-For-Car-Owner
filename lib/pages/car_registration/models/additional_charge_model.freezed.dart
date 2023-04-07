// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_charge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdditionalChargeModel _$AdditionalChargeModelFromJson(
    Map<String, dynamic> json) {
  return _AdditionalChargeModel.fromJson(json);
}

/// @nodoc
mixin _$AdditionalChargeModel {
  int get maximumDistance => throw _privateConstructorUsedError;
  double get distanceSurcharge => throw _privateConstructorUsedError;
  double get timeSurcharge => throw _privateConstructorUsedError;
  double get additionalDistance => throw _privateConstructorUsedError;
  double get additionalTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalChargeModelCopyWith<AdditionalChargeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalChargeModelCopyWith<$Res> {
  factory $AdditionalChargeModelCopyWith(AdditionalChargeModel value,
          $Res Function(AdditionalChargeModel) then) =
      _$AdditionalChargeModelCopyWithImpl<$Res, AdditionalChargeModel>;
  @useResult
  $Res call(
      {int maximumDistance,
      double distanceSurcharge,
      double timeSurcharge,
      double additionalDistance,
      double additionalTime});
}

/// @nodoc
class _$AdditionalChargeModelCopyWithImpl<$Res,
        $Val extends AdditionalChargeModel>
    implements $AdditionalChargeModelCopyWith<$Res> {
  _$AdditionalChargeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximumDistance = null,
    Object? distanceSurcharge = null,
    Object? timeSurcharge = null,
    Object? additionalDistance = null,
    Object? additionalTime = null,
  }) {
    return _then(_value.copyWith(
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
      additionalDistance: null == additionalDistance
          ? _value.additionalDistance
          : additionalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      additionalTime: null == additionalTime
          ? _value.additionalTime
          : additionalTime // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdditionalChargeModelCopyWith<$Res>
    implements $AdditionalChargeModelCopyWith<$Res> {
  factory _$$_AdditionalChargeModelCopyWith(_$_AdditionalChargeModel value,
          $Res Function(_$_AdditionalChargeModel) then) =
      __$$_AdditionalChargeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int maximumDistance,
      double distanceSurcharge,
      double timeSurcharge,
      double additionalDistance,
      double additionalTime});
}

/// @nodoc
class __$$_AdditionalChargeModelCopyWithImpl<$Res>
    extends _$AdditionalChargeModelCopyWithImpl<$Res, _$_AdditionalChargeModel>
    implements _$$_AdditionalChargeModelCopyWith<$Res> {
  __$$_AdditionalChargeModelCopyWithImpl(_$_AdditionalChargeModel _value,
      $Res Function(_$_AdditionalChargeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximumDistance = null,
    Object? distanceSurcharge = null,
    Object? timeSurcharge = null,
    Object? additionalDistance = null,
    Object? additionalTime = null,
  }) {
    return _then(_$_AdditionalChargeModel(
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
      additionalDistance: null == additionalDistance
          ? _value.additionalDistance
          : additionalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      additionalTime: null == additionalTime
          ? _value.additionalTime
          : additionalTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdditionalChargeModel implements _AdditionalChargeModel {
  _$_AdditionalChargeModel(
      {required this.maximumDistance,
      required this.distanceSurcharge,
      required this.timeSurcharge,
      required this.additionalDistance,
      required this.additionalTime});

  factory _$_AdditionalChargeModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalChargeModelFromJson(json);

  @override
  final int maximumDistance;
  @override
  final double distanceSurcharge;
  @override
  final double timeSurcharge;
  @override
  final double additionalDistance;
  @override
  final double additionalTime;

  @override
  String toString() {
    return 'AdditionalChargeModel(maximumDistance: $maximumDistance, distanceSurcharge: $distanceSurcharge, timeSurcharge: $timeSurcharge, additionalDistance: $additionalDistance, additionalTime: $additionalTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdditionalChargeModel &&
            (identical(other.maximumDistance, maximumDistance) ||
                other.maximumDistance == maximumDistance) &&
            (identical(other.distanceSurcharge, distanceSurcharge) ||
                other.distanceSurcharge == distanceSurcharge) &&
            (identical(other.timeSurcharge, timeSurcharge) ||
                other.timeSurcharge == timeSurcharge) &&
            (identical(other.additionalDistance, additionalDistance) ||
                other.additionalDistance == additionalDistance) &&
            (identical(other.additionalTime, additionalTime) ||
                other.additionalTime == additionalTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximumDistance,
      distanceSurcharge, timeSurcharge, additionalDistance, additionalTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdditionalChargeModelCopyWith<_$_AdditionalChargeModel> get copyWith =>
      __$$_AdditionalChargeModelCopyWithImpl<_$_AdditionalChargeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalChargeModelToJson(
      this,
    );
  }
}

abstract class _AdditionalChargeModel implements AdditionalChargeModel {
  factory _AdditionalChargeModel(
      {required final int maximumDistance,
      required final double distanceSurcharge,
      required final double timeSurcharge,
      required final double additionalDistance,
      required final double additionalTime}) = _$_AdditionalChargeModel;

  factory _AdditionalChargeModel.fromJson(Map<String, dynamic> json) =
      _$_AdditionalChargeModel.fromJson;

  @override
  int get maximumDistance;
  @override
  double get distanceSurcharge;
  @override
  double get timeSurcharge;
  @override
  double get additionalDistance;
  @override
  double get additionalTime;
  @override
  @JsonKey(ignore: true)
  _$$_AdditionalChargeModelCopyWith<_$_AdditionalChargeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
