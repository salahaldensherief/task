import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/core/widgets/dont_have_account_widget.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:task/core/widgets/custom_text_field.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_text_bottom.dart';
import 'package:task/features/auth/presentation/views/widgets/passwoed_field.dart';
import 'package:task/features/auth/presentation/views/widgets/social_login_button.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

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
                  'Sign in to continue',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: size.height * 0.10),
                const CustomTextFormField(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email',
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                const PasswordField(hintText: 'Password'),
                const SizedBox(height: 12),
                Row(
                  children: [
                    CustomCheckBox(isChecked: false, onChecked: (value) {}),
                    const SizedBox(width: 8),
                    const Text(
                      'Remember me',
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                    const Spacer(),
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 16,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomTextBottom(text: 'Login'),
                const SizedBox(height: 24),
                const Text('Or', style: TextStyle(fontSize: 20)),
                SizedBox(height: size.height * 0.0200),
                SocialLoginButton(
                  image: AssetsImage.googleIcon,
                  title: 'Continue with Google',
                  onPressed: () {},
                ),
                SizedBox(height: size.height * 0.15),
                const DontHaveAnAccountWidget(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
