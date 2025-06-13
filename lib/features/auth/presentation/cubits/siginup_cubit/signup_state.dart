part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

class SignUpInitial extends SignupState {}

class SignUpLoading extends SignupState {}

class SignUpSuccess extends SignupState {}

class SignUpFailure extends SignupState {
  final String message;
  SignUpFailure(this.message);
}
