import 'package:flutter/material.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/widgets/bottom_nav_bar.dart';
import '../../features/settings/presentation/views/profile_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case BottomNavBar.routeName:
      return MaterialPageRoute(builder: (context) => BottomNavBar());
      case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => SignInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => SignUpView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => HomeView());
    case ProfileView.routeName:
      return MaterialPageRoute(builder: (context) => ProfileView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
