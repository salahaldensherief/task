import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/auth/presentation/views/widgets/sign_in_view_body.dart';

import '../../../home/presentation/views/widgets/bottom_nav_bar.dart';
import '../cubits/login_cubit/login_cubit.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routeName = 'signinview';

  @override
  Widget build(BuildContext context) {
    return const SignInViewBody();
  }
}
