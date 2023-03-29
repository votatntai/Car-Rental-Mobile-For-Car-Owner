// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarType _$CarTypeFromJson(Map<String, dynamic> json) {
  return _CarType.fromJson(json);
}

/// @nodoc
mixin _$CarType {
  TypeModel get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarTypeCopyWith<CarType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarTypeCopyWith<$Res> {
  factory $CarTypeCopyWith(CarType value, $Res Function(CarType) then) =
      _$CarTypeCopyWithImpl<$Res, CarType>;
  @useResult
  $Res call({TypeModel type, String? description});

  $TypeModelCopyWith<$Res> get type;
}

/// @nodoc
class _$CarTypeCopyWithImpl<$Res, $Val extends CarType>
    implements $CarTypeCopyWith<$Res> {
  _$CarTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<$Res> get type {
    return $TypeModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarTypeCopyWith<$Res> implements $CarTypeCopyWith<$Res> {
  factory _$$_CarTypeCopyWith(
          _$_CarType value, $Res Function(_$_CarType) then) =
      __$$_CarTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TypeModel type, String? description});

  @override
  $TypeModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$_CarTypeCopyWithImpl<$Res>
    extends _$CarTypeCopyWithImpl<$Res, _$_CarType>
    implements _$$_CarTypeCopyWith<$Res> {
  __$$_CarTypeCopyWithImpl(_$_CarType _value, $Res Function(_$_CarType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = freezed,
  }) {
    return _then(_$_CarType(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarType implements _CarType {
  _$_CarType({required this.type, this.description});

  factory _$_CarType.fromJson(Map<String, dynamic> json) =>
      _$$_CarTypeFromJson(json);

  @override
  final TypeModel type;
  @override
  final String? description;

  @override
  String toString() {
    return 'CarType(type: $type, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarType &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarTypeCopyWith<_$_CarType> get copyWith =>
      __$$_CarTypeCopyWithImpl<_$_CarType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarTypeToJson(
      this,
    );
  }
}

abstract class _CarType implements CarType {
  factory _CarType({required final TypeModel type, final String? description}) =
      _$_CarType;

  factory _CarType.fromJson(Map<String, dynamic> json) = _$_CarType.fromJson;

  @override
  TypeModel get type;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CarTypeCopyWith<_$_CarType> get copyWith =>
      throw _privateConstructorUsedError;
}
