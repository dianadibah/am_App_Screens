part of 'sign_in_bloc.dart';

@immutable
sealed class SignInEvent {}

class ChangeVisibiltyIcon extends SignInEvent {
  final bool? visibiltyIconPassword;
  final bool? visibiltyIconConfirmPassword;

  ChangeVisibiltyIcon(
      {this.visibiltyIconPassword = true,
      this.visibiltyIconConfirmPassword = true});
}
