part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginLoading extends LoginState {}
final class LoginFailure extends LoginState {
  final String massege;

  LoginFailure(this.massege);
}
final class LoginSuccess extends LoginState {}
class LoginCheckboxToggled extends LoginState {}
