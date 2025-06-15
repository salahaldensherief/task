import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/core/helper/%20Injection/git_it.dart';
import 'package:task/core/helper/app_routes.dart';
import 'package:task/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:task/features/auth/presentation/cubits/siginup_cubit/signup_cubit.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';
import 'package:task/features/home/presentation/views/home_view.dart';

import 'features/home/presentation/views/widgets/bottom_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setup();

  final prefs = await SharedPreferences.getInstance();
  final bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(Task(isLoggedIn: isLoggedIn));
}

class Task extends StatelessWidget {
  final bool isLoggedIn;

  const Task({super.key, required this.isLoggedIn});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(create: (context) => getIt<LoginCubit>()),
        BlocProvider<SignupCubit>(create: (context) => getIt<SignupCubit>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white
        ),
        home: isLoggedIn ? BottomNavBar() : SignInView(),
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
