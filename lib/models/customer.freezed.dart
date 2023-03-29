// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(fromJson: genderFromJson)
  Gender get gender =>
      throw _privateConstructorUsedError; // required Wallet wallet,
  String? get bankAccountNumber => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phone,
      @JsonKey(fromJson: genderFromJson) Gender gender,
      String? bankAccountNumber,
      String? bankName,
      String? avatarUrl,
      String? address});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? gender = null,
    Object? bankAccountNumber = freezed,
    Object? bankName = freezed,
    Object? avatarUrl = freezed,
    Object? address = freezed,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$$_CustomerCopyWith(
          _$_Customer value, $Res Function(_$_Customer) then) =
      __$$_CustomerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String phone,
      @JsonKey(fromJson: genderFromJson) Gender gender,
      String? bankAccountNumber,
      String? bankName,
      String? avatarUrl,
      String? address});
}

/// @nodoc
class __$$_CustomerCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$_Customer>
    implements _$$_CustomerCopyWith<$Res> {
  __$$_CustomerCopyWithImpl(
      _$_Customer _value, $Res Function(_$_Customer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? gender = null,
    Object? bankAccountNumber = freezed,
    Object? bankName = freezed,
    Object? avatarUrl = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Customer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  _$_Customer(
      {required this.id,
      required this.name,
      required this.phone,
      @JsonKey(fromJson: genderFromJson) required this.gender,
      this.bankAccountNumber,
      this.bankName,
      this.avatarUrl,
      this.address});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  @JsonKey(fromJson: genderFromJson)
  final Gender gender;
// required Wallet wallet,
  @override
  final String? bankAccountNumber;
  @override
  final String? bankName;
  @override
  final String? avatarUrl;
  @override
  final String? address;

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, phone: $phone, gender: $gender, bankAccountNumber: $bankAccountNumber, bankName: $bankName, avatarUrl: $avatarUrl, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, gender,
      bankAccountNumber, bankName, avatarUrl, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      __$$_CustomerCopyWithImpl<_$_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  factory _Customer(
      {required final String id,
      required final String name,
      required final String phone,
      @JsonKey(fromJson: genderFromJson) required final Gender gender,
      final String? bankAccountNumber,
      final String? bankName,
      final String? avatarUrl,
      final String? address}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  @JsonKey(fromJson: genderFromJson)
  Gender get gender;
  @override // required Wallet wallet,
  String? get bankAccountNumber;
  @override
  String? get bankName;
  @override
  String? get avatarUrl;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}
