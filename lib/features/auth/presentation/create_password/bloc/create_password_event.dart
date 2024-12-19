part of 'create_password_bloc.dart';

@immutable
sealed class CreatePasswordEvent {}

class ChangeVisibiltyIcon extends CreatePasswordEvent {
  final bool? visibiltyIconPassword;
  final bool? visibiltyIconConfirmPassword;

  ChangeVisibiltyIcon(
      {this.visibiltyIconPassword = true,
      this.visibiltyIconConfirmPassword = true});
}
