// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_owner_transaction_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarOwnerTransactionHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarOwnerTransactionHistoryEventCopyWith<$Res> {
  factory $CarOwnerTransactionHistoryEventCopyWith(
          CarOwnerTransactionHistoryEvent value,
          $Res Function(CarOwnerTransactionHistoryEvent) then) =
      _$CarOwnerTransactionHistoryEventCopyWithImpl<$Res,
          CarOwnerTransactionHistoryEvent>;
}

/// @nodoc
class _$CarOwnerTransactionHistoryEventCopyWithImpl<$Res,
        $Val extends CarOwnerTransactionHistoryEvent>
    implements $CarOwnerTransactionHistoryEventCopyWith<$Res> {
  _$CarOwnerTransactionHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarOwnerTransactionHistoryEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CarOwnerTransactionHistoryEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarOwnerTransactionHistoryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_PageRequestedCopyWith<$Res> {
  factory _$$_PageRequestedCopyWith(
          _$_PageRequested value, $Res Function(_$_PageRequested) then) =
      __$$_PageRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$_PageRequestedCopyWithImpl<$Res>
    extends _$CarOwnerTransactionHistoryEventCopyWithImpl<$Res,
        _$_PageRequested> implements _$$_PageRequestedCopyWith<$Res> {
  __$$_PageRequestedCopyWithImpl(
      _$_PageRequested _value, $Res Function(_$_PageRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$_PageRequested(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageRequested implements _PageRequested {
  const _$_PageRequested({this.pageKey = 0});

  @override
  @JsonKey()
  final int pageKey;

  @override
  String toString() {
    return 'CarOwnerTransactionHistoryEvent.pageRequested(pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageRequested &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      __$$_PageRequestedCopyWithImpl<_$_PageRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(this);
    }
    return orElse();
  }
}

abstract class _PageRequested implements CarOwnerTransactionHistoryEvent {
  const factory _PageRequested({final int pageKey}) = _$_PageRequested;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarOwnerTransactionHistoryState {
  ScrollPagination<Transaction>? get scrollPagination =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarOwnerTransactionHistoryStateCopyWith<CarOwnerTransactionHistoryState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarOwnerTransactionHistoryStateCopyWith<$Res> {
  factory $CarOwnerTransactionHistoryStateCopyWith(
          CarOwnerTransactionHistoryState value,
          $Res Function(CarOwnerTransactionHistoryState) then) =
      _$CarOwnerTransactionHistoryStateCopyWithImpl<$Res,
          CarOwnerTransactionHistoryState>;
  @useResult
  $Res call({ScrollPagination<Transaction>? scrollPagination});

  $ScrollPaginationCopyWith<Transaction, $Res>? get scrollPagination;
}

/// @nodoc
class _$CarOwnerTransactionHistoryStateCopyWithImpl<$Res,
        $Val extends CarOwnerTransactionHistoryState>
    implements $CarOwnerTransactionHistoryStateCopyWith<$Res> {
  _$CarOwnerTransactionHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollPagination = freezed,
  }) {
    return _then(_value.copyWith(
      scrollPagination: freezed == scrollPagination
          ? _value.scrollPagination
          : scrollPagination // ignore: cast_nullable_to_non_nullable
              as ScrollPagination<Transaction>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScrollPaginationCopyWith<Transaction, $Res>? get scrollPagination {
    if (_value.scrollPagination == null) {
      return null;
    }

    return $ScrollPaginationCopyWith<Transaction, $Res>(
        _value.scrollPagination!, (value) {
      return _then(_value.copyWith(scrollPagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarOwnerTransactionHistoryStateCopyWith<$Res>
    implements $CarOwnerTransactionHistoryStateCopyWith<$Res> {
  factory _$$_CarOwnerTransactionHistoryStateCopyWith(
          _$_CarOwnerTransactionHistoryState value,
          $Res Function(_$_CarOwnerTransactionHistoryState) then) =
      __$$_CarOwnerTransactionHistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScrollPagination<Transaction>? scrollPagination});

  @override
  $ScrollPaginationCopyWith<Transaction, $Res>? get scrollPagination;
}

/// @nodoc
class __$$_CarOwnerTransactionHistoryStateCopyWithImpl<$Res>
    extends _$CarOwnerTransactionHistoryStateCopyWithImpl<$Res,
        _$_CarOwnerTransactionHistoryState>
    implements _$$_CarOwnerTransactionHistoryStateCopyWith<$Res> {
  __$$_CarOwnerTransactionHistoryStateCopyWithImpl(
      _$_CarOwnerTransactionHistoryState _value,
      $Res Function(_$_CarOwnerTransactionHistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollPagination = freezed,
  }) {
    return _then(_$_CarOwnerTransactionHistoryState(
      scrollPagination: freezed == scrollPagination
          ? _value.scrollPagination
          : scrollPagination // ignore: cast_nullable_to_non_nullable
              as ScrollPagination<Transaction>?,
    ));
  }
}

/// @nodoc

class _$_CarOwnerTransactionHistoryState
    implements _CarOwnerTransactionHistoryState {
  const _$_CarOwnerTransactionHistoryState({this.scrollPagination});

  @override
  final ScrollPagination<Transaction>? scrollPagination;

  @override
  String toString() {
    return 'CarOwnerTransactionHistoryState(scrollPagination: $scrollPagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarOwnerTransactionHistoryState &&
            (identical(other.scrollPagination, scrollPagination) ||
                other.scrollPagination == scrollPagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scrollPagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarOwnerTransactionHistoryStateCopyWith<
          _$_CarOwnerTransactionHistoryState>
      get copyWith => __$$_CarOwnerTransactionHistoryStateCopyWithImpl<
          _$_CarOwnerTransactionHistoryState>(this, _$identity);
}

abstract class _CarOwnerTransactionHistoryState
    implements CarOwnerTransactionHistoryState {
  const factory _CarOwnerTransactionHistoryState(
          {final ScrollPagination<Transaction>? scrollPagination}) =
      _$_CarOwnerTransactionHistoryState;

  @override
  ScrollPagination<Transaction>? get scrollPagination;
  @override
  @JsonKey(ignore: true)
  _$$_CarOwnerTransactionHistoryStateCopyWith<
          _$_CarOwnerTransactionHistoryState>
      get copyWith => throw _privateConstructorUsedError;
}
