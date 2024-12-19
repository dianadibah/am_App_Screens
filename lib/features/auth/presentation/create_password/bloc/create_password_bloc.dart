import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_password_event.dart';
part 'create_password_state.dart';

class CreatePasswordBloc
    extends Bloc<CreatePasswordEvent, CreatePasswordState> {
  CreatePasswordBloc() : super(CreatePasswordState()) {
    on<ChangeVisibiltyIcon>((event, emit) {
      emit(state.copyWith(
          visibiltyIconPassword: event.visibiltyIconPassword,
          visibiltyIconConfirmPassword: event.visibiltyIconConfirmPassword));
    });
  }
}
