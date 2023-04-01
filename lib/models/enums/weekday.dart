// enum for weekday
enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

Weekday weekdayFromJson(String value) {
  switch (value.toLowerCase()) {
    case 'monday':
    case 'thứ hai':
    case 'thứ 2':
      return Weekday.monday;
    case 'tuesday':
    case 'thứ ba':
    case 'thứ 3':
      return Weekday.tuesday;
    case 'wednesday':
    case 'thứ tư':
    case 'thứ 4':
      return Weekday.wednesday;
    case 'thursday':
    case 'thứ năm':
    case 'thứ 5':
      return Weekday.thursday;
    case 'friday':
    case 'thứ sáu':
    case 'thứ 6':
      return Weekday.friday;
    case 'saturday':
    case 'thứ bảy':
    case 'thứ 7':
      return Weekday.saturday;
    case 'sunday':
    case 'chủ nhật':
    case 'cn':
      return Weekday.sunday;
    default:
      return Weekday.monday;
  }
}

extension WeekdayExtension on Weekday {
  String get displayName {
    switch (this) {
      case Weekday.monday:
        return 'Thứ hai';
      case Weekday.tuesday:
        return 'Thứ ba';
      case Weekday.wednesday:
        return 'Thứ tư';
      case Weekday.thursday:
        return 'Thứ năm';
      case Weekday.friday:
        return 'Thứ sáu';
      case Weekday.saturday:
        return 'Thứ bảy';
      case Weekday.sunday:
        return 'Chủ nhật';
    }
  }
}
