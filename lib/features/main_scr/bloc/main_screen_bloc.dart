import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc() : super(MainScreenState()) {
    on<BottomNavBarEvent>((event, emit) {
      emit(state.copyWith(currentIndex: event.currentIndex));
    });
  }
}
