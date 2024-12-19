part of 'main_screen_bloc.dart';

class MainScreenState {
  final int currentIndex;

  MainScreenState({this.currentIndex = 0});

  MainScreenState copyWith({int? currentIndex}) {
    return MainScreenState(currentIndex: currentIndex ?? this.currentIndex);
  }
}
