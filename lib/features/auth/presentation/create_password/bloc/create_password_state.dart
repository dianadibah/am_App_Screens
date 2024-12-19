// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'create_password_bloc.dart';

class CreatePasswordState {
  final bool visibiltyIconPassword;
  final bool visibiltyIconConfirmPassword;

  CreatePasswordState(
      {this.visibiltyIconPassword = true,
      this.visibiltyIconConfirmPassword = true});

  CreatePasswordState copyWith({
    bool? visibiltyIconPassword,
    bool? visibiltyIconConfirmPassword,
  }) {
    return CreatePasswordState(
      visibiltyIconPassword:
          visibiltyIconPassword ?? this.visibiltyIconPassword,
      visibiltyIconConfirmPassword:
          visibiltyIconConfirmPassword ?? this.visibiltyIconConfirmPassword,
    );
  }
}
