// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_tracking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarTrackingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> carIds) started,
    required TResult Function(List<Car> selectedCars) selectedCarsChanged,
    required TResult Function(TrackingModel trackingModel) carLocationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> carIds)? started,
    TResult? Function(List<Car> selectedCars)? selectedCarsChanged,
    TResult? Function(TrackingModel trackingModel)? carLocationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> carIds)? started,
    TResult Function(List<Car> selectedCars)? selectedCarsChanged,
    TResult Function(TrackingModel trackingModel)? carLocationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCarsChanged value) selectedCarsChanged,
    required TResult Function(_CarLocationChanged value) carLocationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedCarsChanged value)? selectedCarsChanged,
    TResult? Function(_CarLocationChanged value)? carLocationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCarsChanged value)? selectedCarsChanged,
    TResult Function(_CarLocationChanged value)? carLocationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarTrackingEventCopyWith<$Res> {
  factory $CarTrackingEventCopyWith(
          CarTrackingEvent value, $Res Function(CarTrackingEvent) then) =
      _$CarTrackingEventCopyWithImpl<$Res, CarTrackingEvent>;
}

/// @nodoc
class _$CarTrackingEventCopyWithImpl<$Res, $Val extends CarTrackingEvent>
    implements $CarTrackingEventCopyWith<$Res> {
  _$CarTrackingEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<String> carIds});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarTrackingEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carIds = null,
  }) {
    return _then(_$_Started(
      carIds: null == carIds
          ? _value._carIds
          : carIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required final List<String> carIds}) : _carIds = carIds;

  final List<String> _carIds;
  @override
  List<String> get carIds {
    if (_carIds is EqualUnmodifiableListView) return _carIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carIds);
  }

  @override
  String toString() {
    return 'CarTrackingEvent.started(carIds: $carIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other._carIds, _carIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_carIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> carIds) started,
    required TResult Function(List<Car> selectedCars) selectedCarsChanged,
    required TResult Function(TrackingModel trackingModel) carLocationChanged,
  }) {
    return started(carIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> carIds)? started,
    TResult? Function(List<Car> selectedCars)? selectedCarsChanged,
    TResult? Function(TrackingModel trackingModel)? carLocationChanged,
  }) {
    return started?.call(carIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> carIds)? started,
    TResult Function(List<Car> selectedCars)? selectedCarsChanged,
    TResult Function(TrackingModel trackingModel)? carLocationChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(carIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCarsChanged value) selectedCarsChanged,
    required TResult Function(_CarLocationChanged value) carLocationChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedCarsChanged value)? selectedCarsChanged,
    TResult? Function(_CarLocationChanged value)? carLocationChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCarsChanged value)? selectedCarsChanged,
    TResult Function(_CarLocationChanged value)? carLocationChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarTrackingEvent {
  const factory _Started({required final List<String> carIds}) = _$_Started;

  List<String> get carIds;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedCarsChangedCopyWith<$Res> {
  factory _$$_SelectedCarsChangedCopyWith(_$_SelectedCarsChanged value,
          $Res Function(_$_SelectedCarsChanged) then) =
      __$$_SelectedCarsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Car> selectedCars});
}

/// @nodoc
class __$$_SelectedCarsChangedCopyWithImpl<$Res>
    extends _$CarTrackingEventCopyWithImpl<$Res, _$_SelectedCarsChanged>
    implements _$$_SelectedCarsChangedCopyWith<$Res> {
  __$$_SelectedCarsChangedCopyWithImpl(_$_SelectedCarsChanged _value,
      $Res Function(_$_SelectedCarsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCars = null,
  }) {
    return _then(_$_SelectedCarsChanged(
      selectedCars: null == selectedCars
          ? _value._selectedCars
          : selectedCars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$_SelectedCarsChanged implements _SelectedCarsChanged {
  const _$_SelectedCarsChanged({required final List<Car> selectedCars})
      : _selectedCars = selectedCars;

  final List<Car> _selectedCars;
  @override
  List<Car> get selectedCars {
    if (_selectedCars is EqualUnmodifiableListView) return _selectedCars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCars);
  }

  @override
  String toString() {
    return 'CarTrackingEvent.selectedCarsChanged(selectedCars: $selectedCars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedCarsChanged &&
            const DeepCollectionEquality()
                .equals(other._selectedCars, _selectedCars));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedCars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedCarsChangedCopyWith<_$_SelectedCarsChanged> get copyWith =>
      __$$_SelectedCarsChangedCopyWithImpl<_$_SelectedCarsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> carIds) started,
    required TResult Function(List<Car> selectedCars) selectedCarsChanged,
    required TResult Function(TrackingModel trackingModel) carLocationChanged,
  }) {
    return selectedCarsChanged(selectedCars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> carIds)? started,
    TResult? Function(List<Car> selectedCars)? selectedCarsChanged,
    TResult? Function(TrackingModel trackingModel)? carLocationChanged,
  }) {
    return selectedCarsChanged?.call(selectedCars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> carIds)? started,
    TResult Function(List<Car> selectedCars)? selectedCarsChanged,
    TResult Function(TrackingModel trackingModel)? carLocationChanged,
    required TResult orElse(),
  }) {
    if (selectedCarsChanged != null) {
      return selectedCarsChanged(selectedCars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCarsChanged value) selectedCarsChanged,
    required TResult Function(_CarLocationChanged value) carLocationChanged,
  }) {
    return selectedCarsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedCarsChanged value)? selectedCarsChanged,
    TResult? Function(_CarLocationChanged value)? carLocationChanged,
  }) {
    return selectedCarsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCarsChanged value)? selectedCarsChanged,
    TResult Function(_CarLocationChanged value)? carLocationChanged,
    required TResult orElse(),
  }) {
    if (selectedCarsChanged != null) {
      return selectedCarsChanged(this);
    }
    return orElse();
  }
}

abstract class _SelectedCarsChanged implements CarTrackingEvent {
  const factory _SelectedCarsChanged({required final List<Car> selectedCars}) =
      _$_SelectedCarsChanged;

  List<Car> get selectedCars;
  @JsonKey(ignore: true)
  _$$_SelectedCarsChangedCopyWith<_$_SelectedCarsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CarLocationChangedCopyWith<$Res> {
  factory _$$_CarLocationChangedCopyWith(_$_CarLocationChanged value,
          $Res Function(_$_CarLocationChanged) then) =
      __$$_CarLocationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackingModel trackingModel});

  $TrackingModelCopyWith<$Res> get trackingModel;
}

/// @nodoc
class __$$_CarLocationChangedCopyWithImpl<$Res>
    extends _$CarTrackingEventCopyWithImpl<$Res, _$_CarLocationChanged>
    implements _$$_CarLocationChangedCopyWith<$Res> {
  __$$_CarLocationChangedCopyWithImpl(
      _$_CarLocationChanged _value, $Res Function(_$_CarLocationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingModel = null,
  }) {
    return _then(_$_CarLocationChanged(
      trackingModel: null == trackingModel
          ? _value.trackingModel
          : trackingModel // ignore: cast_nullable_to_non_nullable
              as TrackingModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackingModelCopyWith<$Res> get trackingModel {
    return $TrackingModelCopyWith<$Res>(_value.trackingModel, (value) {
      return _then(_value.copyWith(trackingModel: value));
    });
  }
}

/// @nodoc

class _$_CarLocationChanged implements _CarLocationChanged {
  const _$_CarLocationChanged({required this.trackingModel});

  @override
  final TrackingModel trackingModel;

  @override
  String toString() {
    return 'CarTrackingEvent.carLocationChanged(trackingModel: $trackingModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarLocationChanged &&
            (identical(other.trackingModel, trackingModel) ||
                other.trackingModel == trackingModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarLocationChangedCopyWith<_$_CarLocationChanged> get copyWith =>
      __$$_CarLocationChangedCopyWithImpl<_$_CarLocationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> carIds) started,
    required TResult Function(List<Car> selectedCars) selectedCarsChanged,
    required TResult Function(TrackingModel trackingModel) carLocationChanged,
  }) {
    return carLocationChanged(trackingModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> carIds)? started,
    TResult? Function(List<Car> selectedCars)? selectedCarsChanged,
    TResult? Function(TrackingModel trackingModel)? carLocationChanged,
  }) {
    return carLocationChanged?.call(trackingModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> carIds)? started,
    TResult Function(List<Car> selectedCars)? selectedCarsChanged,
    TResult Function(TrackingModel trackingModel)? carLocationChanged,
    required TResult orElse(),
  }) {
    if (carLocationChanged != null) {
      return carLocationChanged(trackingModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCarsChanged value) selectedCarsChanged,
    required TResult Function(_CarLocationChanged value) carLocationChanged,
  }) {
    return carLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedCarsChanged value)? selectedCarsChanged,
    TResult? Function(_CarLocationChanged value)? carLocationChanged,
  }) {
    return carLocationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCarsChanged value)? selectedCarsChanged,
    TResult Function(_CarLocationChanged value)? carLocationChanged,
    required TResult orElse(),
  }) {
    if (carLocationChanged != null) {
      return carLocationChanged(this);
    }
    return orElse();
  }
}

abstract class _CarLocationChanged implements CarTrackingEvent {
  const factory _CarLocationChanged(
      {required final TrackingModel trackingModel}) = _$_CarLocationChanged;

  TrackingModel get trackingModel;
  @JsonKey(ignore: true)
  _$$_CarLocationChangedCopyWith<_$_CarLocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarTrackingState {
  List<Car> get myCars => throw _privateConstructorUsedError;
  List<Car> get selectedCars => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarTrackingStateCopyWith<CarTrackingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarTrackingStateCopyWith<$Res> {
  factory $CarTrackingStateCopyWith(
          CarTrackingState value, $Res Function(CarTrackingState) then) =
      _$CarTrackingStateCopyWithImpl<$Res, CarTrackingState>;
  @useResult
  $Res call({List<Car> myCars, List<Car> selectedCars, Set<Marker> markers});
}

/// @nodoc
class _$CarTrackingStateCopyWithImpl<$Res, $Val extends CarTrackingState>
    implements $CarTrackingStateCopyWith<$Res> {
  _$CarTrackingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myCars = null,
    Object? selectedCars = null,
    Object? markers = null,
  }) {
    return _then(_value.copyWith(
      myCars: null == myCars
          ? _value.myCars
          : myCars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      selectedCars: null == selectedCars
          ? _value.selectedCars
          : selectedCars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarTrackingStateCopyWith<$Res>
    implements $CarTrackingStateCopyWith<$Res> {
  factory _$$_CarTrackingStateCopyWith(
          _$_CarTrackingState value, $Res Function(_$_CarTrackingState) then) =
      __$$_CarTrackingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> myCars, List<Car> selectedCars, Set<Marker> markers});
}

/// @nodoc
class __$$_CarTrackingStateCopyWithImpl<$Res>
    extends _$CarTrackingStateCopyWithImpl<$Res, _$_CarTrackingState>
    implements _$$_CarTrackingStateCopyWith<$Res> {
  __$$_CarTrackingStateCopyWithImpl(
      _$_CarTrackingState _value, $Res Function(_$_CarTrackingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myCars = null,
    Object? selectedCars = null,
    Object? markers = null,
  }) {
    return _then(_$_CarTrackingState(
      myCars: null == myCars
          ? _value._myCars
          : myCars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      selectedCars: null == selectedCars
          ? _value._selectedCars
          : selectedCars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ));
  }
}

/// @nodoc

class _$_CarTrackingState implements _CarTrackingState {
  const _$_CarTrackingState(
      {required final List<Car> myCars,
      required final List<Car> selectedCars,
      required final Set<Marker> markers})
      : _myCars = myCars,
        _selectedCars = selectedCars,
        _markers = markers;

  final List<Car> _myCars;
  @override
  List<Car> get myCars {
    if (_myCars is EqualUnmodifiableListView) return _myCars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myCars);
  }

  final List<Car> _selectedCars;
  @override
  List<Car> get selectedCars {
    if (_selectedCars is EqualUnmodifiableListView) return _selectedCars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCars);
  }

  final Set<Marker> _markers;
  @override
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  String toString() {
    return 'CarTrackingState(myCars: $myCars, selectedCars: $selectedCars, markers: $markers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarTrackingState &&
            const DeepCollectionEquality().equals(other._myCars, _myCars) &&
            const DeepCollectionEquality()
                .equals(other._selectedCars, _selectedCars) &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_myCars),
      const DeepCollectionEquality().hash(_selectedCars),
      const DeepCollectionEquality().hash(_markers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarTrackingStateCopyWith<_$_CarTrackingState> get copyWith =>
      __$$_CarTrackingStateCopyWithImpl<_$_CarTrackingState>(this, _$identity);
}

abstract class _CarTrackingState implements CarTrackingState {
  const factory _CarTrackingState(
      {required final List<Car> myCars,
      required final List<Car> selectedCars,
      required final Set<Marker> markers}) = _$_CarTrackingState;

  @override
  List<Car> get myCars;
  @override
  List<Car> get selectedCars;
  @override
  Set<Marker> get markers;
  @override
  @JsonKey(ignore: true)
  _$$_CarTrackingStateCopyWith<_$_CarTrackingState> get copyWith =>
      throw _privateConstructorUsedError;
}
