part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.statusChanged({
    required AuthData authData,
  }) = _StatusChangedEvent;
}
