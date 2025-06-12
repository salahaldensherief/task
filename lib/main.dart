import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/helper/%20Injection/git_it.dart';
import 'package:task/core/helper/app_routes.dart';
import 'package:task/features/auth/domain/repo/login_repo.dart';
import 'package:task/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';

void main() {
  setup();
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (context) =>getIt<LoginCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: onGenerateRoute,
        initialRoute: SignInView.routeName,
      ),
    );
  }
}

