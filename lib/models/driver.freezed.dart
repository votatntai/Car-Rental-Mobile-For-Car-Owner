// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
mixin _$Driver {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get bankAccountNumber => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get accountStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res, Driver>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? address,
      String phone,
      String gender,
      String? avatarUrl,
      String? bankAccountNumber,
      String? bankName,
      Location? location,
      String status,
      bool accountStatus});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$DriverCopyWithImpl<$Res, $Val extends Driver>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

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
    Object? bankName = freezed,
    Object? location = freezed,
    Object? status = null,
    Object? accountStatus = null,
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
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      accountStatus: null == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$_DriverCopyWith(_$_Driver value, $Res Function(_$_Driver) then) =
      __$$_DriverCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? address,
      String phone,
      String gender,
      String? avatarUrl,
      String? bankAccountNumber,
      String? bankName,
      Location? location,
      String status,
      bool accountStatus});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_DriverCopyWithImpl<$Res>
    extends _$DriverCopyWithImpl<$Res, _$_Driver>
    implements _$$_DriverCopyWith<$Res> {
  __$$_DriverCopyWithImpl(_$_Driver _value, $Res Function(_$_Driver) _then)
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
    Object? bankName = freezed,
    Object? location = freezed,
    Object? status = null,
    Object? accountStatus = null,
  }) {
    return _then(_$_Driver(
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
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      accountStatus: null == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Driver implements _Driver {
  const _$_Driver(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone,
      required this.gender,
      this.avatarUrl,
      this.bankAccountNumber,
      this.bankName,
      this.location,
      required this.status,
      required this.accountStatus});

  factory _$_Driver.fromJson(Map<String, dynamic> json) =>
      _$$_DriverFromJson(json);

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
  final String? bankName;
  @override
  final Location? location;
  @override
  final String status;
  @override
  final bool accountStatus;

  @override
  String toString() {
    return 'Driver(id: $id, name: $name, address: $address, phone: $phone, gender: $gender, avatarUrl: $avatarUrl, bankAccountNumber: $bankAccountNumber, bankName: $bankName, location: $location, status: $status, accountStatus: $accountStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Driver &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.accountStatus, accountStatus) ||
                other.accountStatus == accountStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, phone, gender,
      avatarUrl, bankAccountNumber, bankName, location, status, accountStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      __$$_DriverCopyWithImpl<_$_Driver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverToJson(
      this,
    );
  }
}

abstract class _Driver implements Driver {
  const factory _Driver(
      {required final String id,
      required final String name,
      required final String? address,
      required final String phone,
      required final String gender,
      final String? avatarUrl,
      final String? bankAccountNumber,
      final String? bankName,
      final Location? location,
      required final String status,
      required final bool accountStatus}) = _$_Driver;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$_Driver.fromJson;

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
  String? get bankName;
  @override
  Location? get location;
  @override
  String get status;
  @override
  bool get accountStatus;
  @override
  @JsonKey(ignore: true)
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      throw _privateConstructorUsedError;
}
