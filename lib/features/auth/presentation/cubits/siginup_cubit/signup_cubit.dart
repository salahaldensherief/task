import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:task/features/auth/domain/repos/signup_repi.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signUpRepo) : super(SignUpInitial());

  final SignUpRepo signUpRepo;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmedPasswordController = TextEditingController();
  final nameController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm password is required';
    } else if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  Future<void> signUp() async {
    if (!formKey.currentState!.validate()) return;

    emit(SignUpLoading());
    try {
      final res = await signUpRepo.signUp(
        nameController.text,
        emailController.text,
        passwordController.text,
      );

      if (res) {
        emit(SignUpSuccess());
      } else {
        emit(SignUpFailure('Email already exists'));
      }
    } catch (_) {
      emit(SignUpFailure('Something went wrong, try again later'));
    }
  }

}