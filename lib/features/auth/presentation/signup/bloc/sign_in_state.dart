// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sign_in_bloc.dart';

class SignInState {
  final bool visibiltyIconPassword;
  final bool visibiltyIconConfirmPassword;

  SignInState(
      {this.visibiltyIconPassword = true,
      this.visibiltyIconConfirmPassword = true});

  SignInState copyWith({
    bool? visibiltyIconPassword,
    bool? visibiltyIconConfirmPassword,
  }) {
    return SignInState(
      visibiltyIconPassword:
          visibiltyIconPassword ?? this.visibiltyIconPassword,
      visibiltyIconConfirmPassword:
          visibiltyIconConfirmPassword ?? this.visibiltyIconConfirmPassword,
    );
  }
}
