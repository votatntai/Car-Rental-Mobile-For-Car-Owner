// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Calendar _$CalendarFromJson(Map<String, dynamic> json) {
  return _Calendar.fromJson(json);
}

/// @nodoc
mixin _$Calendar {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: weekdayFromJson)
  Weekday get weekday => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get startTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarCopyWith<Calendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarCopyWith<$Res> {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) then) =
      _$CalendarCopyWithImpl<$Res, Calendar>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(fromJson: weekdayFromJson) Weekday weekday,
      @TimeOfDayConverter() TimeOfDay startTime,
      @TimeOfDayConverter() TimeOfDay endTime});
}

/// @nodoc
class _$CalendarCopyWithImpl<$Res, $Val extends Calendar>
    implements $CalendarCopyWith<$Res> {
  _$CalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekday = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as Weekday,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarCopyWith<$Res> implements $CalendarCopyWith<$Res> {
  factory _$$_CalendarCopyWith(
          _$_Calendar value, $Res Function(_$_Calendar) then) =
      __$$_CalendarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(fromJson: weekdayFromJson) Weekday weekday,
      @TimeOfDayConverter() TimeOfDay startTime,
      @TimeOfDayConverter() TimeOfDay endTime});
}

/// @nodoc
class __$$_CalendarCopyWithImpl<$Res>
    extends _$CalendarCopyWithImpl<$Res, _$_Calendar>
    implements _$$_CalendarCopyWith<$Res> {
  __$$_CalendarCopyWithImpl(
      _$_Calendar _value, $Res Function(_$_Calendar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekday = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$_Calendar(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as Weekday,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Calendar implements _Calendar {
  _$_Calendar(
      {required this.id,
      @JsonKey(fromJson: weekdayFromJson) required this.weekday,
      @TimeOfDayConverter() required this.startTime,
      @TimeOfDayConverter() required this.endTime});

  factory _$_Calendar.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(fromJson: weekdayFromJson)
  final Weekday weekday;
  @override
  @TimeOfDayConverter()
  final TimeOfDay startTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay endTime;

  @override
  String toString() {
    return 'Calendar(id: $id, weekday: $weekday, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Calendar &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, weekday, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarCopyWith<_$_Calendar> get copyWith =>
      __$$_CalendarCopyWithImpl<_$_Calendar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarToJson(
      this,
    );
  }
}

abstract class _Calendar implements Calendar {
  factory _Calendar(
      {required final String id,
      @JsonKey(fromJson: weekdayFromJson) required final Weekday weekday,
      @TimeOfDayConverter() required final TimeOfDay startTime,
      @TimeOfDayConverter() required final TimeOfDay endTime}) = _$_Calendar;

  factory _Calendar.fromJson(Map<String, dynamic> json) = _$_Calendar.fromJson;

  @override
  String get id;
  @override
  @JsonKey(fromJson: weekdayFromJson)
  Weekday get weekday;
  @override
  @TimeOfDayConverter()
  TimeOfDay get startTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarCopyWith<_$_Calendar> get copyWith =>
      throw _privateConstructorUsedError;
}
