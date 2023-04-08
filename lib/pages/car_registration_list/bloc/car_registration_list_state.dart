part of 'car_registration_list_bloc.dart';

@freezed
class CarRegistrationListState with _$CarRegistrationListState {
  const factory CarRegistrationListState({
    ScrollPagination<CarRegistration>? scrollPagination,
  }) = _CarRegistrationListState;
}
