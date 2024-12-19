import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<ChangeVisibiltyIcon>((event, emit) {
      emit(state.copyWith(
          visibiltyIconPassword: event.visibiltyIconPassword,
          visibiltyIconConfirmPassword: event.visibiltyIconConfirmPassword));
    });
  }
}
