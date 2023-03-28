// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scroll_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScrollPagination<T> {
  List<T>? get itemList => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScrollPaginationCopyWith<T, ScrollPagination<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrollPaginationCopyWith<T, $Res> {
  factory $ScrollPaginationCopyWith(
          ScrollPagination<T> value, $Res Function(ScrollPagination<T>) then) =
      _$ScrollPaginationCopyWithImpl<T, $Res, ScrollPagination<T>>;
  @useResult
  $Res call({List<T>? itemList, dynamic error, int? nextPageKey});
}

/// @nodoc
class _$ScrollPaginationCopyWithImpl<T, $Res, $Val extends ScrollPagination<T>>
    implements $ScrollPaginationCopyWith<T, $Res> {
  _$ScrollPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = freezed,
    Object? error = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      itemList: freezed == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScrollPaginationCopyWith<T, $Res>
    implements $ScrollPaginationCopyWith<T, $Res> {
  factory _$$_ScrollPaginationCopyWith(_$_ScrollPagination<T> value,
          $Res Function(_$_ScrollPagination<T>) then) =
      __$$_ScrollPaginationCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T>? itemList, dynamic error, int? nextPageKey});
}

/// @nodoc
class __$$_ScrollPaginationCopyWithImpl<T, $Res>
    extends _$ScrollPaginationCopyWithImpl<T, $Res, _$_ScrollPagination<T>>
    implements _$$_ScrollPaginationCopyWith<T, $Res> {
  __$$_ScrollPaginationCopyWithImpl(_$_ScrollPagination<T> _value,
      $Res Function(_$_ScrollPagination<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = freezed,
    Object? error = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_$_ScrollPagination<T>(
      itemList: freezed == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ScrollPagination<T> implements _ScrollPagination<T> {
  _$_ScrollPagination({final List<T>? itemList, this.error, this.nextPageKey})
      : _itemList = itemList;

  final List<T>? _itemList;
  @override
  List<T>? get itemList {
    final value = _itemList;
    if (value == null) return null;
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic error;
  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'ScrollPagination<$T>(itemList: $itemList, error: $error, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScrollPagination<T> &&
            const DeepCollectionEquality().equals(other._itemList, _itemList) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.nextPageKey, nextPageKey) ||
                other.nextPageKey == nextPageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_itemList),
      const DeepCollectionEquality().hash(error),
      nextPageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScrollPaginationCopyWith<T, _$_ScrollPagination<T>> get copyWith =>
      __$$_ScrollPaginationCopyWithImpl<T, _$_ScrollPagination<T>>(
          this, _$identity);
}

abstract class _ScrollPagination<T> implements ScrollPagination<T> {
  factory _ScrollPagination(
      {final List<T>? itemList,
      final dynamic error,
      final int? nextPageKey}) = _$_ScrollPagination<T>;

  @override
  List<T>? get itemList;
  @override
  dynamic get error;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$$_ScrollPaginationCopyWith<T, _$_ScrollPagination<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
