// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DriverNotificationEvent {
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
abstract class $DriverNotificationEventCopyWith<$Res> {
  factory $DriverNotificationEventCopyWith(DriverNotificationEvent value,
          $Res Function(DriverNotificationEvent) then) =
      _$DriverNotificationEventCopyWithImpl<$Res, DriverNotificationEvent>;
}

/// @nodoc
class _$DriverNotificationEventCopyWithImpl<$Res,
        $Val extends DriverNotificationEvent>
    implements $DriverNotificationEventCopyWith<$Res> {
  _$DriverNotificationEventCopyWithImpl(this._value, this._then);

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
    extends _$DriverNotificationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DriverNotificationEvent.started()';
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

abstract class _Started implements DriverNotificationEvent {
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
    extends _$DriverNotificationEventCopyWithImpl<$Res, _$_PageRequested>
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
    return 'DriverNotificationEvent.pageRequested(pageKey: $pageKey)';
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

abstract class _PageRequested implements DriverNotificationEvent {
  const factory _PageRequested({final int pageKey}) = _$_PageRequested;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DriverNotificationState {
  ScrollPagination<Notification>? get scrollPagination =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverNotificationStateCopyWith<DriverNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverNotificationStateCopyWith<$Res> {
  factory $DriverNotificationStateCopyWith(DriverNotificationState value,
          $Res Function(DriverNotificationState) then) =
      _$DriverNotificationStateCopyWithImpl<$Res, DriverNotificationState>;
  @useResult
  $Res call({ScrollPagination<Notification>? scrollPagination});

  $ScrollPaginationCopyWith<Notification, $Res>? get scrollPagination;
}

/// @nodoc
class _$DriverNotificationStateCopyWithImpl<$Res,
        $Val extends DriverNotificationState>
    implements $DriverNotificationStateCopyWith<$Res> {
  _$DriverNotificationStateCopyWithImpl(this._value, this._then);

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
              as ScrollPagination<Notification>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScrollPaginationCopyWith<Notification, $Res>? get scrollPagination {
    if (_value.scrollPagination == null) {
      return null;
    }

    return $ScrollPaginationCopyWith<Notification, $Res>(
        _value.scrollPagination!, (value) {
      return _then(_value.copyWith(scrollPagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverNotificationStateCopyWith<$Res>
    implements $DriverNotificationStateCopyWith<$Res> {
  factory _$$_DriverNotificationStateCopyWith(_$_DriverNotificationState value,
          $Res Function(_$_DriverNotificationState) then) =
      __$$_DriverNotificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScrollPagination<Notification>? scrollPagination});

  @override
  $ScrollPaginationCopyWith<Notification, $Res>? get scrollPagination;
}

/// @nodoc
class __$$_DriverNotificationStateCopyWithImpl<$Res>
    extends _$DriverNotificationStateCopyWithImpl<$Res,
        _$_DriverNotificationState>
    implements _$$_DriverNotificationStateCopyWith<$Res> {
  __$$_DriverNotificationStateCopyWithImpl(_$_DriverNotificationState _value,
      $Res Function(_$_DriverNotificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollPagination = freezed,
  }) {
    return _then(_$_DriverNotificationState(
      scrollPagination: freezed == scrollPagination
          ? _value.scrollPagination
          : scrollPagination // ignore: cast_nullable_to_non_nullable
              as ScrollPagination<Notification>?,
    ));
  }
}

/// @nodoc

class _$_DriverNotificationState implements _DriverNotificationState {
  const _$_DriverNotificationState({this.scrollPagination});

  @override
  final ScrollPagination<Notification>? scrollPagination;

  @override
  String toString() {
    return 'DriverNotificationState(scrollPagination: $scrollPagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverNotificationState &&
            (identical(other.scrollPagination, scrollPagination) ||
                other.scrollPagination == scrollPagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scrollPagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverNotificationStateCopyWith<_$_DriverNotificationState>
      get copyWith =>
          __$$_DriverNotificationStateCopyWithImpl<_$_DriverNotificationState>(
              this, _$identity);
}

abstract class _DriverNotificationState implements DriverNotificationState {
  const factory _DriverNotificationState(
          {final ScrollPagination<Notification>? scrollPagination}) =
      _$_DriverNotificationState;

  @override
  ScrollPagination<Notification>? get scrollPagination;
  @override
  @JsonKey(ignore: true)
  _$$_DriverNotificationStateCopyWith<_$_DriverNotificationState>
      get copyWith => throw _privateConstructorUsedError;
}
