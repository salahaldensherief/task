import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:task/features/auth/domain/repos/signup_repi.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signUpRepo) : super(SignUpInitial());
  final SignUpRepo signUpRepo;
  Future<void> signUp(String email, String password, String name) async {
    emit(SignUpLoading());
    try {
      final res = await signUpRepo.signUp(name, email, password);
      if (res) {
        emit(SignUpSuccess());
      } else {
        emit(SignUpFailure('email already exists'));
      }
    } on Exception catch (e) {
      emit(SignUpFailure('Something went wrong, try again later'));
    }
  }
}
