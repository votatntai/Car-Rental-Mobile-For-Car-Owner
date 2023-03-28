enum Role {
  carOwner,
  driver,
}

extension RoleParse on String {
  Role toRole() {
    switch (this) {
      case 'carOwner':
        return Role.carOwner;
      case 'driver':
        return Role.driver;
      default:
        return Role.carOwner;
    }
  }
}
