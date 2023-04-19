enum Gender {
  male,
  female,
  other,
}

Gender genderFromJson(String value) {
  switch (value.toLowerCase()) {
    case 'nam':
    case 'male':
      return Gender.male;
    case 'nữ':
    case 'female':
      return Gender.female;
    default:
      return Gender.other;
  }
}

extension GenderName on Gender {
  String getDisplayName() {
    switch (this) {
      case Gender.male:
        return 'Nam';
      case Gender.female:
        return 'Nữ';
      case Gender.other:
        return 'Khác';
    }
  }
}
