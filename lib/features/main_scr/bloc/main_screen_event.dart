part of 'main_screen_bloc.dart';

@immutable
sealed class MainScreenEvent {}

class BottomNavBarEvent extends MainScreenEvent {
  final int currentIndex;

  BottomNavBarEvent({required this.currentIndex});
}
