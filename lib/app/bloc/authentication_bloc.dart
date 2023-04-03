import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_car_owner/app/dio_helper.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/auth_data.dart';
import 'package:car_rental_for_car_owner/models/enums/role.dart';
import 'package:car_rental_for_car_owner/repositories/authentication_repository.dart';
import 'package:car_rental_for_car_owner/repositories/fcm_token_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.authenticationRepository,
  }) : super(AuthenticationState(
          authData: AuthData(
            status: AuthenticationStatus.unknown,
            role: Role.carOwner,
          ),
        )) {
    on<_StatusChangedEvent>(_onStatusChanged);

    // add subscription
    _authenticationStatusSubscription = authenticationRepository.status.listen(
      (status) => add(AuthenticationEvent.statusChanged(authData: status)),
    );
  }

  final AuthenticationRepository authenticationRepository;

  late StreamSubscription<AuthData> _authenticationStatusSubscription;

  @override
  Future<void> close() async {
    await _authenticationStatusSubscription.cancel();
    await authenticationRepository.dispose();
    return super.close();
  }

  FutureOr<void> _onStatusChanged(
    _StatusChangedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.authData.status) {
      case AuthenticationStatus.unauthenticated:
        //* remove dio config
        getIt.get<DioHelper>().removeDioInterceptors();

        emit(AuthenticationState(
          authData: event.authData,
        ));
        break;

      case AuthenticationStatus.unknown:
        emit(AuthenticationState(
          authData: event.authData,
        ));

        break;
      case AuthenticationStatus.authenticated:
        //* config dio
        await getIt.get<DioHelper>().initDioInterceptors();

        // final user = await _tryGetUser();
        // if (user == null) {
        //   return emit(
        //     const AuthenticationState(
        //       status: AuthenticationStatus.unauthenticated,
        //     ),
        //   );
        // }

        await getIt.get<FCMTokenRepository>().addFcmToken();

        emit(AuthenticationState(
          authData: event.authData,
        ));
        break;
    }
  }

// Future<User?> _tryGetUser() async {
//   try {
//     final user = await _userRepository.getProfile();
//     return user;
//   } catch (_) {
//     return null;
//   }
// }
}
