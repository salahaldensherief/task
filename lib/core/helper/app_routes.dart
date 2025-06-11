import 'package:flutter/material.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SignInView.routeName :
      return MaterialPageRoute(builder: (context) => SignInView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
