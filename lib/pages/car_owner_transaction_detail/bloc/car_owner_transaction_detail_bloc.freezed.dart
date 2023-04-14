// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_owner_transaction_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarOwnerTransactionDetailEvent {
  String get transactionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionId) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transactionId)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionId)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarOwnerTransactionDetailEventCopyWith<CarOwnerTransactionDetailEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarOwnerTransactionDetailEventCopyWith<$Res> {
  factory $CarOwnerTransactionDetailEventCopyWith(
          CarOwnerTransactionDetailEvent value,
          $Res Function(CarOwnerTransactionDetailEvent) then) =
      _$CarOwnerTransactionDetailEventCopyWithImpl<$Res,
          CarOwnerTransactionDetailEvent>;
  @useResult
  $Res call({String transactionId});
}

/// @nodoc
class _$CarOwnerTransactionDetailEventCopyWithImpl<$Res,
        $Val extends CarOwnerTransactionDetailEvent>
    implements $CarOwnerTransactionDetailEventCopyWith<$Res> {
  _$CarOwnerTransactionDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $CarOwnerTransactionDetailEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarOwnerTransactionDetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_$_Started(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.transactionId});

  @override
  final String transactionId;

  @override
  String toString() {
    return 'CarOwnerTransactionDetailEvent.started(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionId) started,
  }) {
    return started(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transactionId)? started,
  }) {
    return started?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionId)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarOwnerTransactionDetailEvent {
  const factory _Started({required final String transactionId}) = _$_Started;

  @override
  String get transactionId;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarOwnerTransactionDetailState {
  Transaction? get transaction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarOwnerTransactionDetailStateCopyWith<CarOwnerTransactionDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarOwnerTransactionDetailStateCopyWith<$Res> {
  factory $CarOwnerTransactionDetailStateCopyWith(
          CarOwnerTransactionDetailState value,
          $Res Function(CarOwnerTransactionDetailState) then) =
      _$CarOwnerTransactionDetailStateCopyWithImpl<$Res,
          CarOwnerTransactionDetailState>;
  @useResult
  $Res call({Transaction? transaction});

  $TransactionCopyWith<$Res>? get transaction;
}

/// @nodoc
class _$CarOwnerTransactionDetailStateCopyWithImpl<$Res,
        $Val extends CarOwnerTransactionDetailState>
    implements $CarOwnerTransactionDetailStateCopyWith<$Res> {
  _$CarOwnerTransactionDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res>? get transaction {
    if (_value.transaction == null) {
      return null;
    }

    return $TransactionCopyWith<$Res>(_value.transaction!, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarOwnerTransactionDetailStateCopyWith<$Res>
    implements $CarOwnerTransactionDetailStateCopyWith<$Res> {
  factory _$$_CarOwnerTransactionDetailStateCopyWith(
          _$_CarOwnerTransactionDetailState value,
          $Res Function(_$_CarOwnerTransactionDetailState) then) =
      __$$_CarOwnerTransactionDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction? transaction});

  @override
  $TransactionCopyWith<$Res>? get transaction;
}

/// @nodoc
class __$$_CarOwnerTransactionDetailStateCopyWithImpl<$Res>
    extends _$CarOwnerTransactionDetailStateCopyWithImpl<$Res,
        _$_CarOwnerTransactionDetailState>
    implements _$$_CarOwnerTransactionDetailStateCopyWith<$Res> {
  __$$_CarOwnerTransactionDetailStateCopyWithImpl(
      _$_CarOwnerTransactionDetailState _value,
      $Res Function(_$_CarOwnerTransactionDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = freezed,
  }) {
    return _then(_$_CarOwnerTransactionDetailState(
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
    ));
  }
}

/// @nodoc

class _$_CarOwnerTransactionDetailState
    implements _CarOwnerTransactionDetailState {
  const _$_CarOwnerTransactionDetailState({this.transaction});

  @override
  final Transaction? transaction;

  @override
  String toString() {
    return 'CarOwnerTransactionDetailState(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarOwnerTransactionDetailState &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarOwnerTransactionDetailStateCopyWith<_$_CarOwnerTransactionDetailState>
      get copyWith => __$$_CarOwnerTransactionDetailStateCopyWithImpl<
          _$_CarOwnerTransactionDetailState>(this, _$identity);
}

abstract class _CarOwnerTransactionDetailState
    implements CarOwnerTransactionDetailState {
  const factory _CarOwnerTransactionDetailState(
      {final Transaction? transaction}) = _$_CarOwnerTransactionDetailState;

  @override
  Transaction? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_CarOwnerTransactionDetailStateCopyWith<_$_CarOwnerTransactionDetailState>
      get copyWith => throw _privateConstructorUsedError;
}
