part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required AuthData authData,
  }) = _AuthenticationState;
}
