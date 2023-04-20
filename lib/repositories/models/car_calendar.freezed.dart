// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarCalendar _$CarCalendarFromJson(Map<String, dynamic> json) {
  return _CarCalendar.fromJson(json);
}

/// @nodoc
mixin _$CarCalendar {
  String? get description => throw _privateConstructorUsedError;
  Calendar? get calendar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarCalendarCopyWith<CarCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCalendarCopyWith<$Res> {
  factory $CarCalendarCopyWith(
          CarCalendar value, $Res Function(CarCalendar) then) =
      _$CarCalendarCopyWithImpl<$Res, CarCalendar>;
  @useResult
  $Res call({String? description, Calendar? calendar});

  $CalendarCopyWith<$Res>? get calendar;
}

/// @nodoc
class _$CarCalendarCopyWithImpl<$Res, $Val extends CarCalendar>
    implements $CarCalendarCopyWith<$Res> {
  _$CarCalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? calendar = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      calendar: freezed == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as Calendar?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarCopyWith<$Res>? get calendar {
    if (_value.calendar == null) {
      return null;
    }

    return $CalendarCopyWith<$Res>(_value.calendar!, (value) {
      return _then(_value.copyWith(calendar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarCalendarCopyWith<$Res>
    implements $CarCalendarCopyWith<$Res> {
  factory _$$_CarCalendarCopyWith(
          _$_CarCalendar value, $Res Function(_$_CarCalendar) then) =
      __$$_CarCalendarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, Calendar? calendar});

  @override
  $CalendarCopyWith<$Res>? get calendar;
}

/// @nodoc
class __$$_CarCalendarCopyWithImpl<$Res>
    extends _$CarCalendarCopyWithImpl<$Res, _$_CarCalendar>
    implements _$$_CarCalendarCopyWith<$Res> {
  __$$_CarCalendarCopyWithImpl(
      _$_CarCalendar _value, $Res Function(_$_CarCalendar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? calendar = freezed,
  }) {
    return _then(_$_CarCalendar(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      calendar: freezed == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as Calendar?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarCalendar implements _CarCalendar {
  _$_CarCalendar({this.description, this.calendar});

  factory _$_CarCalendar.fromJson(Map<String, dynamic> json) =>
      _$$_CarCalendarFromJson(json);

  @override
  final String? description;
  @override
  final Calendar? calendar;

  @override
  String toString() {
    return 'CarCalendar(description: $description, calendar: $calendar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarCalendar &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.calendar, calendar) ||
                other.calendar == calendar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, calendar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarCalendarCopyWith<_$_CarCalendar> get copyWith =>
      __$$_CarCalendarCopyWithImpl<_$_CarCalendar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarCalendarToJson(
      this,
    );
  }
}

abstract class _CarCalendar implements CarCalendar {
  factory _CarCalendar({final String? description, final Calendar? calendar}) =
      _$_CarCalendar;

  factory _CarCalendar.fromJson(Map<String, dynamic> json) =
      _$_CarCalendar.fromJson;

  @override
  String? get description;
  @override
  Calendar? get calendar;
  @override
  @JsonKey(ignore: true)
  _$$_CarCalendarCopyWith<_$_CarCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}
