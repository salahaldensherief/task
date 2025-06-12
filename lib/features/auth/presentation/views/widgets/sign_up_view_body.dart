import 'package:flutter/material.dart';
import 'package:task/core/widgets/have_an_account.dart';
import 'package:task/features/auth/presentation/views/widgets/passwoed_field.dart';
import 'package:task/features/auth/presentation/views/widgets/social_login_button.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/dont_have_account_widget.dart';
import 'custom_check_box.dart';
import 'custom_text_bottom.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.10),
                Image.asset(AssetsImage.logo, height: size.height * 0.10),
                const Text(
                  'Create a new account',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: size.height * 0.10),
                const CustomTextFormField(
                  prefixIcon: Icon(Icons.person, size: 26),
                  hintText: 'User name',
                  textInputType: TextInputType.name,
                ),
                const SizedBox(height: 20),
                const CustomTextFormField(
                  prefixIcon: Icon(Icons.email, size: 26),
                  hintText: 'Email',
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                const PasswordField(hintText: 'Password'),
                const SizedBox(height: 20),
                const PasswordField(hintText: 'Confirm password'),

                const SizedBox(height: 30),
                CustomTextBottom(text: 'Sign up'),
                SizedBox(height: size.height * 0.15),
                const HaveAnAccountWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
