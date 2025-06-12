import 'package:flutter/material.dart';
import 'package:task/core/helper/app_routes.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';

void main() {
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SignInView.routeName,
    );
  }
}

