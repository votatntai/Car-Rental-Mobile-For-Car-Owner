// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Promotion _$PromotionFromJson(Map<String, dynamic> json) {
  return _Promotion.fromJson(json);
}

/// @nodoc
mixin _$Promotion {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionCopyWith<Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCopyWith<$Res> {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) then) =
      _$PromotionCopyWithImpl<$Res, Promotion>;
  @useResult
  $Res call({String id, String name, String? description, double discount});
}

/// @nodoc
class _$PromotionCopyWithImpl<$Res, $Val extends Promotion>
    implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._value, this._then);

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
    Object? discount = null,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionCopyWith<$Res> implements $PromotionCopyWith<$Res> {
  factory _$$_PromotionCopyWith(
          _$_Promotion value, $Res Function(_$_Promotion) then) =
      __$$_PromotionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? description, double discount});
}

/// @nodoc
class __$$_PromotionCopyWithImpl<$Res>
    extends _$PromotionCopyWithImpl<$Res, _$_Promotion>
    implements _$$_PromotionCopyWith<$Res> {
  __$$_PromotionCopyWithImpl(
      _$_Promotion _value, $Res Function(_$_Promotion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? discount = null,
  }) {
    return _then(_$_Promotion(
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Promotion implements _Promotion {
  const _$_Promotion(
      {required this.id,
      required this.name,
      this.description,
      required this.discount});

  factory _$_Promotion.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double discount;

  @override
  String toString() {
    return 'Promotion(id: $id, name: $name, description: $description, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Promotion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionCopyWith<_$_Promotion> get copyWith =>
      __$$_PromotionCopyWithImpl<_$_Promotion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionToJson(
      this,
    );
  }
}

abstract class _Promotion implements Promotion {
  const factory _Promotion(
      {required final String id,
      required final String name,
      final String? description,
      required final double discount}) = _$_Promotion;

  factory _Promotion.fromJson(Map<String, dynamic> json) =
      _$_Promotion.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get discount;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionCopyWith<_$_Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}
