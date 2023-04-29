// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedbackListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? carId, String? driverId) started,
    required TResult Function(int pageKey) pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? carId, String? driverId)? started,
    TResult? Function(int pageKey)? pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? carId, String? driverId)? started,
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
abstract class $FeedbackListEventCopyWith<$Res> {
  factory $FeedbackListEventCopyWith(
          FeedbackListEvent value, $Res Function(FeedbackListEvent) then) =
      _$FeedbackListEventCopyWithImpl<$Res, FeedbackListEvent>;
}

/// @nodoc
class _$FeedbackListEventCopyWithImpl<$Res, $Val extends FeedbackListEvent>
    implements $FeedbackListEventCopyWith<$Res> {
  _$FeedbackListEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String? carId, String? driverId});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$FeedbackListEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? driverId = freezed,
  }) {
    return _then(_$_Started(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({this.carId, this.driverId});

  @override
  final String? carId;
  @override
  final String? driverId;

  @override
  String toString() {
    return 'FeedbackListEvent.started(carId: $carId, driverId: $driverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carId, driverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? carId, String? driverId) started,
    required TResult Function(int pageKey) pageRequested,
  }) {
    return started(carId, driverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? carId, String? driverId)? started,
    TResult? Function(int pageKey)? pageRequested,
  }) {
    return started?.call(carId, driverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? carId, String? driverId)? started,
    TResult Function(int pageKey)? pageRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(carId, driverId);
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

abstract class _Started implements FeedbackListEvent {
  const factory _Started({final String? carId, final String? driverId}) =
      _$_Started;

  String? get carId;
  String? get driverId;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$FeedbackListEventCopyWithImpl<$Res, _$_PageRequested>
    implements _$$_PageRequestedCopyWith<$Res> {
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
    return 'FeedbackListEvent.pageRequested(pageKey: $pageKey)';
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
    required TResult Function(String? carId, String? driverId) started,
    required TResult Function(int pageKey) pageRequested,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? carId, String? driverId)? started,
    TResult? Function(int pageKey)? pageRequested,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? carId, String? driverId)? started,
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

abstract class _PageRequested implements FeedbackListEvent {
  const factory _PageRequested({final int pageKey}) = _$_PageRequested;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedbackListState {
  ScrollPagination<FeedbackModel>? get scrollPagination =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedbackListStateCopyWith<FeedbackListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackListStateCopyWith<$Res> {
  factory $FeedbackListStateCopyWith(
          FeedbackListState value, $Res Function(FeedbackListState) then) =
      _$FeedbackListStateCopyWithImpl<$Res, FeedbackListState>;
  @useResult
  $Res call({ScrollPagination<FeedbackModel>? scrollPagination});

  $ScrollPaginationCopyWith<FeedbackModel, $Res>? get scrollPagination;
}

/// @nodoc
class _$FeedbackListStateCopyWithImpl<$Res, $Val extends FeedbackListState>
    implements $FeedbackListStateCopyWith<$Res> {
  _$FeedbackListStateCopyWithImpl(this._value, this._then);

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
              as ScrollPagination<FeedbackModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScrollPaginationCopyWith<FeedbackModel, $Res>? get scrollPagination {
    if (_value.scrollPagination == null) {
      return null;
    }

    return $ScrollPaginationCopyWith<FeedbackModel, $Res>(
        _value.scrollPagination!, (value) {
      return _then(_value.copyWith(scrollPagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedbackListStateCopyWith<$Res>
    implements $FeedbackListStateCopyWith<$Res> {
  factory _$$_FeedbackListStateCopyWith(_$_FeedbackListState value,
          $Res Function(_$_FeedbackListState) then) =
      __$$_FeedbackListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScrollPagination<FeedbackModel>? scrollPagination});

  @override
  $ScrollPaginationCopyWith<FeedbackModel, $Res>? get scrollPagination;
}

/// @nodoc
class __$$_FeedbackListStateCopyWithImpl<$Res>
    extends _$FeedbackListStateCopyWithImpl<$Res, _$_FeedbackListState>
    implements _$$_FeedbackListStateCopyWith<$Res> {
  __$$_FeedbackListStateCopyWithImpl(
      _$_FeedbackListState _value, $Res Function(_$_FeedbackListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollPagination = freezed,
  }) {
    return _then(_$_FeedbackListState(
      scrollPagination: freezed == scrollPagination
          ? _value.scrollPagination
          : scrollPagination // ignore: cast_nullable_to_non_nullable
              as ScrollPagination<FeedbackModel>?,
    ));
  }
}

/// @nodoc

class _$_FeedbackListState implements _FeedbackListState {
  const _$_FeedbackListState({this.scrollPagination});

  @override
  final ScrollPagination<FeedbackModel>? scrollPagination;

  @override
  String toString() {
    return 'FeedbackListState(scrollPagination: $scrollPagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbackListState &&
            (identical(other.scrollPagination, scrollPagination) ||
                other.scrollPagination == scrollPagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scrollPagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackListStateCopyWith<_$_FeedbackListState> get copyWith =>
      __$$_FeedbackListStateCopyWithImpl<_$_FeedbackListState>(
          this, _$identity);
}

abstract class _FeedbackListState implements FeedbackListState {
  const factory _FeedbackListState(
          {final ScrollPagination<FeedbackModel>? scrollPagination}) =
      _$_FeedbackListState;

  @override
  ScrollPagination<FeedbackModel>? get scrollPagination;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackListStateCopyWith<_$_FeedbackListState> get copyWith =>
      throw _privateConstructorUsedError;
}
