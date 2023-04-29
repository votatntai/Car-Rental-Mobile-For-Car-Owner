// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackModel _$FeedbackModelFromJson(Map<String, dynamic> json) {
  return _FeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$FeedbackModel {
  String get id => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  String? get carId => throw _privateConstructorUsedError;
  int? get star => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackModelCopyWith<FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackModelCopyWith<$Res> {
  factory $FeedbackModelCopyWith(
          FeedbackModel value, $Res Function(FeedbackModel) then) =
      _$FeedbackModelCopyWithImpl<$Res, FeedbackModel>;
  @useResult
  $Res call(
      {String id,
      String? orderId,
      String? customerId,
      String? driverId,
      String? carId,
      int? star,
      String? content,
      DateTime createAt});
}

/// @nodoc
class _$FeedbackModelCopyWithImpl<$Res, $Val extends FeedbackModel>
    implements $FeedbackModelCopyWith<$Res> {
  _$FeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = freezed,
    Object? customerId = freezed,
    Object? driverId = freezed,
    Object? carId = freezed,
    Object? star = freezed,
    Object? content = freezed,
    Object? createAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedbackModelCopyWith<$Res>
    implements $FeedbackModelCopyWith<$Res> {
  factory _$$_FeedbackModelCopyWith(
          _$_FeedbackModel value, $Res Function(_$_FeedbackModel) then) =
      __$$_FeedbackModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? orderId,
      String? customerId,
      String? driverId,
      String? carId,
      int? star,
      String? content,
      DateTime createAt});
}

/// @nodoc
class __$$_FeedbackModelCopyWithImpl<$Res>
    extends _$FeedbackModelCopyWithImpl<$Res, _$_FeedbackModel>
    implements _$$_FeedbackModelCopyWith<$Res> {
  __$$_FeedbackModelCopyWithImpl(
      _$_FeedbackModel _value, $Res Function(_$_FeedbackModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = freezed,
    Object? customerId = freezed,
    Object? driverId = freezed,
    Object? carId = freezed,
    Object? star = freezed,
    Object? content = freezed,
    Object? createAt = null,
  }) {
    return _then(_$_FeedbackModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackModel implements _FeedbackModel {
  const _$_FeedbackModel(
      {required this.id,
      this.orderId,
      this.customerId,
      this.driverId,
      this.carId,
      this.star,
      this.content,
      required this.createAt});

  factory _$_FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackModelFromJson(json);

  @override
  final String id;
  @override
  final String? orderId;
  @override
  final String? customerId;
  @override
  final String? driverId;
  @override
  final String? carId;
  @override
  final int? star;
  @override
  final String? content;
  @override
  final DateTime createAt;

  @override
  String toString() {
    return 'FeedbackModel(id: $id, orderId: $orderId, customerId: $customerId, driverId: $driverId, carId: $carId, star: $star, content: $content, createAt: $createAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbackModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderId, customerId,
      driverId, carId, star, content, createAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackModelCopyWith<_$_FeedbackModel> get copyWith =>
      __$$_FeedbackModelCopyWithImpl<_$_FeedbackModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackModelToJson(
      this,
    );
  }
}

abstract class _FeedbackModel implements FeedbackModel {
  const factory _FeedbackModel(
      {required final String id,
      final String? orderId,
      final String? customerId,
      final String? driverId,
      final String? carId,
      final int? star,
      final String? content,
      required final DateTime createAt}) = _$_FeedbackModel;

  factory _FeedbackModel.fromJson(Map<String, dynamic> json) =
      _$_FeedbackModel.fromJson;

  @override
  String get id;
  @override
  String? get orderId;
  @override
  String? get customerId;
  @override
  String? get driverId;
  @override
  String? get carId;
  @override
  int? get star;
  @override
  String? get content;
  @override
  DateTime get createAt;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackModelCopyWith<_$_FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}
