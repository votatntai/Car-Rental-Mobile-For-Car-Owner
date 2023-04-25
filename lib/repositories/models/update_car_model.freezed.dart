// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCarModel _$UpdateCarModelFromJson(Map<String, dynamic> json) {
  return _UpdateCarModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateCarModel {
  List<CarCalendar>? get carCalendars => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCarModelCopyWith<UpdateCarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCarModelCopyWith<$Res> {
  factory $UpdateCarModelCopyWith(
          UpdateCarModel value, $Res Function(UpdateCarModel) then) =
      _$UpdateCarModelCopyWithImpl<$Res, UpdateCarModel>;
  @useResult
  $Res call({List<CarCalendar>? carCalendars, String? status});
}

/// @nodoc
class _$UpdateCarModelCopyWithImpl<$Res, $Val extends UpdateCarModel>
    implements $UpdateCarModelCopyWith<$Res> {
  _$UpdateCarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carCalendars = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      carCalendars: freezed == carCalendars
          ? _value.carCalendars
          : carCalendars // ignore: cast_nullable_to_non_nullable
              as List<CarCalendar>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateCarModelCopyWith<$Res>
    implements $UpdateCarModelCopyWith<$Res> {
  factory _$$_UpdateCarModelCopyWith(
          _$_UpdateCarModel value, $Res Function(_$_UpdateCarModel) then) =
      __$$_UpdateCarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CarCalendar>? carCalendars, String? status});
}

/// @nodoc
class __$$_UpdateCarModelCopyWithImpl<$Res>
    extends _$UpdateCarModelCopyWithImpl<$Res, _$_UpdateCarModel>
    implements _$$_UpdateCarModelCopyWith<$Res> {
  __$$_UpdateCarModelCopyWithImpl(
      _$_UpdateCarModel _value, $Res Function(_$_UpdateCarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carCalendars = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_UpdateCarModel(
      carCalendars: freezed == carCalendars
          ? _value._carCalendars
          : carCalendars // ignore: cast_nullable_to_non_nullable
              as List<CarCalendar>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCarModel implements _UpdateCarModel {
  _$_UpdateCarModel({final List<CarCalendar>? carCalendars, this.status})
      : _carCalendars = carCalendars;

  factory _$_UpdateCarModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateCarModelFromJson(json);

  final List<CarCalendar>? _carCalendars;
  @override
  List<CarCalendar>? get carCalendars {
    final value = _carCalendars;
    if (value == null) return null;
    if (_carCalendars is EqualUnmodifiableListView) return _carCalendars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;

  @override
  String toString() {
    return 'UpdateCarModel(carCalendars: $carCalendars, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCarModel &&
            const DeepCollectionEquality()
                .equals(other._carCalendars, _carCalendars) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_carCalendars), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCarModelCopyWith<_$_UpdateCarModel> get copyWith =>
      __$$_UpdateCarModelCopyWithImpl<_$_UpdateCarModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCarModelToJson(
      this,
    );
  }
}

abstract class _UpdateCarModel implements UpdateCarModel {
  factory _UpdateCarModel(
      {final List<CarCalendar>? carCalendars,
      final String? status}) = _$_UpdateCarModel;

  factory _UpdateCarModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateCarModel.fromJson;

  @override
  List<CarCalendar>? get carCalendars;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCarModelCopyWith<_$_UpdateCarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
