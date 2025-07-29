import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/auth/presentation/cubits/siginup_cubit/signup_cubit.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';
import 'package:task/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = 'signupview';

  @override
  Widget build(BuildContext context) {
    return const SignUpViewBody();
  }
}
