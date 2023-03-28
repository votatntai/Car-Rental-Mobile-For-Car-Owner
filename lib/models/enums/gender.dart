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
