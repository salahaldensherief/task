import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:task/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
static const routeName = 'homeview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const HomeViewBody());
  }
}
