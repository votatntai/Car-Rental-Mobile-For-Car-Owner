import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_registration_event.dart';
part 'car_registration_state.dart';
part 'car_registration_bloc.freezed.dart';

class CarRegistrationBloc extends Bloc<CarRegistrationEvent, CarRegistrationState> {
  CarRegistrationBloc() : super(_Initial()) {
    on<CarRegistrationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
