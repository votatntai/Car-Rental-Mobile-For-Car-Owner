// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feature _$FeatureFromJson(Map<String, dynamic> json) {
  return _Feature.fromJson(json);
}

/// @nodoc
mixin _$Feature {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureCopyWith<Feature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureCopyWith<$Res> {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) then) =
      _$FeatureCopyWithImpl<$Res, Feature>;
  @useResult
  $Res call({String id, String name, String? description});
}

/// @nodoc
class _$FeatureCopyWithImpl<$Res, $Val extends Feature>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeatureCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$$_FeatureCopyWith(
          _$_Feature value, $Res Function(_$_Feature) then) =
      __$$_FeatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? description});
}

/// @nodoc
class __$$_FeatureCopyWithImpl<$Res>
    extends _$FeatureCopyWithImpl<$Res, _$_Feature>
    implements _$$_FeatureCopyWith<$Res> {
  __$$_FeatureCopyWithImpl(_$_Feature _value, $Res Function(_$_Feature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$_Feature(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feature implements _Feature {
  const _$_Feature(
      {required this.id, required this.name, required this.description});

  factory _$_Feature.fromJson(Map<String, dynamic> json) =>
      _$$_FeatureFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'Feature(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feature &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureCopyWith<_$_Feature> get copyWith =>
      __$$_FeatureCopyWithImpl<_$_Feature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeatureToJson(
      this,
    );
  }
}

abstract class _Feature implements Feature {
  const factory _Feature(
      {required final String id,
      required final String name,
      required final String? description}) = _$_Feature;

  factory _Feature.fromJson(Map<String, dynamic> json) = _$_Feature.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureCopyWith<_$_Feature> get copyWith =>
      throw _privateConstructorUsedError;
}
