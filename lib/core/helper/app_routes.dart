import 'package:flutter/material.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/views/home_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SignInView.routeName :
      return MaterialPageRoute(builder: (context) => SignInView());
      case SignUpView.routeName :
      return MaterialPageRoute(builder: (context) => SignUpView());
      case HomeView.routeName :
      return MaterialPageRoute(builder: (context) => HomeView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
