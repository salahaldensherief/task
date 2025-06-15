import 'package:flutter/material.dart';
import 'package:task/core/widgets/custom_app_bar.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Settings'),
    );
  }
}
