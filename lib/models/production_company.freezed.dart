// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) {
  return _ProductionCompany.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompany {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompanyCopyWith<ProductionCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyCopyWith<$Res> {
  factory $ProductionCompanyCopyWith(
          ProductionCompany value, $Res Function(ProductionCompany) then) =
      _$ProductionCompanyCopyWithImpl<$Res, ProductionCompany>;
  @useResult
  $Res call({String id, String name, String? description});
}

/// @nodoc
class _$ProductionCompanyCopyWithImpl<$Res, $Val extends ProductionCompany>
    implements $ProductionCompanyCopyWith<$Res> {
  _$ProductionCompanyCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProductionCompanyCopyWith<$Res>
    implements $ProductionCompanyCopyWith<$Res> {
  factory _$$_ProductionCompanyCopyWith(_$_ProductionCompany value,
          $Res Function(_$_ProductionCompany) then) =
      __$$_ProductionCompanyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? description});
}

/// @nodoc
class __$$_ProductionCompanyCopyWithImpl<$Res>
    extends _$ProductionCompanyCopyWithImpl<$Res, _$_ProductionCompany>
    implements _$$_ProductionCompanyCopyWith<$Res> {
  __$$_ProductionCompanyCopyWithImpl(
      _$_ProductionCompany _value, $Res Function(_$_ProductionCompany) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$_ProductionCompany(
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
class _$_ProductionCompany implements _ProductionCompany {
  _$_ProductionCompany(
      {required this.id, required this.name, this.description});

  factory _$_ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$$_ProductionCompanyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'ProductionCompany(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductionCompany &&
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
  _$$_ProductionCompanyCopyWith<_$_ProductionCompany> get copyWith =>
      __$$_ProductionCompanyCopyWithImpl<_$_ProductionCompany>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductionCompanyToJson(
      this,
    );
  }
}

abstract class _ProductionCompany implements ProductionCompany {
  factory _ProductionCompany(
      {required final String id,
      required final String name,
      final String? description}) = _$_ProductionCompany;

  factory _ProductionCompany.fromJson(Map<String, dynamic> json) =
      _$_ProductionCompany.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ProductionCompanyCopyWith<_$_ProductionCompany> get copyWith =>
      throw _privateConstructorUsedError;
}
