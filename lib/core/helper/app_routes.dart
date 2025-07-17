import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';

import ' Injection/git_it.dart';
import '../../features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import '../../features/auth/presentation/cubits/siginup_cubit/signup_cubit.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/widgets/bottom_nav_bar.dart';
import '../../features/settings/presentation/views/profile_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case BottomNavBar.routeName:
      return MaterialPageRoute(builder: (context) => BottomNavBar());

    case SignInView.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (_) => getIt<LoginCubit>(),
          child: const SignInView(),
        ),
      );

    case SignUpView.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (_) => getIt<SignupCubit>(),
          child: const SignUpView(),
        ),
      );

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    case ProfileView.routeName:
      return MaterialPageRoute(builder: (context) => const ProfileView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}