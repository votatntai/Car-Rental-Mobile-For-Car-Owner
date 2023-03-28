// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationResult<T> _$PaginationResultFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationResult<T> {
  List<T> get data => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationResultCopyWith<T, PaginationResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResultCopyWith<T, $Res> {
  factory $PaginationResultCopyWith(
          PaginationResult<T> value, $Res Function(PaginationResult<T>) then) =
      _$PaginationResultCopyWithImpl<T, $Res, PaginationResult<T>>;
  @useResult
  $Res call({List<T> data, Pagination pagination});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PaginationResultCopyWithImpl<T, $Res, $Val extends PaginationResult<T>>
    implements $PaginationResultCopyWith<T, $Res> {
  _$PaginationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginationResultCopyWith<T, $Res>
    implements $PaginationResultCopyWith<T, $Res> {
  factory _$$_PaginationResultCopyWith(_$_PaginationResult<T> value,
          $Res Function(_$_PaginationResult<T>) then) =
      __$$_PaginationResultCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, Pagination pagination});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_PaginationResultCopyWithImpl<T, $Res>
    extends _$PaginationResultCopyWithImpl<T, $Res, _$_PaginationResult<T>>
    implements _$$_PaginationResultCopyWith<T, $Res> {
  __$$_PaginationResultCopyWithImpl(_$_PaginationResult<T> _value,
      $Res Function(_$_PaginationResult<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$_PaginationResult<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_PaginationResult<T> implements _PaginationResult<T> {
  _$_PaginationResult({required final List<T> data, required this.pagination})
      : _data = data;

  factory _$_PaginationResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PaginationResultFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Pagination pagination;

  @override
  String toString() {
    return 'PaginationResult<$T>(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationResult<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationResultCopyWith<T, _$_PaginationResult<T>> get copyWith =>
      __$$_PaginationResultCopyWithImpl<T, _$_PaginationResult<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PaginationResultToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationResult<T> implements PaginationResult<T> {
  factory _PaginationResult(
      {required final List<T> data,
      required final Pagination pagination}) = _$_PaginationResult<T>;

  factory _PaginationResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PaginationResult<T>.fromJson;

  @override
  List<T> get data;
  @override
  Pagination get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationResultCopyWith<T, _$_PaginationResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
