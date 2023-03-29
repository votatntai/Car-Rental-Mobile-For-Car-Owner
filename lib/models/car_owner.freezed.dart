// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarOwner _$CarOwnerFromJson(Map<String, dynamic> json) {
  return _CarOwner.fromJson(json);
}

/// @nodoc
mixin _$CarOwner {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get bankAccountNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarOwnerCopyWith<CarOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarOwnerCopyWith<$Res> {
  factory $CarOwnerCopyWith(CarOwner value, $Res Function(CarOwner) then) =
      _$CarOwnerCopyWithImpl<$Res, CarOwner>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? address,
      String phone,
      String gender,
      String? avatarUrl,
      String? bankAccountNumber});
}

/// @nodoc
class _$CarOwnerCopyWithImpl<$Res, $Val extends CarOwner>
    implements $CarOwnerCopyWith<$Res> {
  _$CarOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? phone = null,
    Object? gender = null,
    Object? avatarUrl = freezed,
    Object? bankAccountNumber = freezed,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarOwnerCopyWith<$Res> implements $CarOwnerCopyWith<$Res> {
  factory _$$_CarOwnerCopyWith(
          _$_CarOwner value, $Res Function(_$_CarOwner) then) =
      __$$_CarOwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? address,
      String phone,
      String gender,
      String? avatarUrl,
      String? bankAccountNumber});
}

/// @nodoc
class __$$_CarOwnerCopyWithImpl<$Res>
    extends _$CarOwnerCopyWithImpl<$Res, _$_CarOwner>
    implements _$$_CarOwnerCopyWith<$Res> {
  __$$_CarOwnerCopyWithImpl(
      _$_CarOwner _value, $Res Function(_$_CarOwner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? phone = null,
    Object? gender = null,
    Object? avatarUrl = freezed,
    Object? bankAccountNumber = freezed,
  }) {
    return _then(_$_CarOwner(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarOwner implements _CarOwner {
  const _$_CarOwner(
      {required this.id,
      required this.name,
      this.address,
      required this.phone,
      required this.gender,
      this.avatarUrl,
      this.bankAccountNumber});

  factory _$_CarOwner.fromJson(Map<String, dynamic> json) =>
      _$$_CarOwnerFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? address;
  @override
  final String phone;
  @override
  final String gender;
  @override
  final String? avatarUrl;
  @override
  final String? bankAccountNumber;

  @override
  String toString() {
    return 'CarOwner(id: $id, name: $name, address: $address, phone: $phone, gender: $gender, avatarUrl: $avatarUrl, bankAccountNumber: $bankAccountNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarOwner &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, phone, gender,
      avatarUrl, bankAccountNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarOwnerCopyWith<_$_CarOwner> get copyWith =>
      __$$_CarOwnerCopyWithImpl<_$_CarOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarOwnerToJson(
      this,
    );
  }
}

abstract class _CarOwner implements CarOwner {
  const factory _CarOwner(
      {required final String id,
      required final String name,
      final String? address,
      required final String phone,
      required final String gender,
      final String? avatarUrl,
      final String? bankAccountNumber}) = _$_CarOwner;

  factory _CarOwner.fromJson(Map<String, dynamic> json) = _$_CarOwner.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get address;
  @override
  String get phone;
  @override
  String get gender;
  @override
  String? get avatarUrl;
  @override
  String? get bankAccountNumber;
  @override
  @JsonKey(ignore: true)
  _$$_CarOwnerCopyWith<_$_CarOwner> get copyWith =>
      throw _privateConstructorUsedError;
}
