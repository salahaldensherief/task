import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/core/widgets/dont_have_account_widget.dart';
import 'package:task/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:task/core/widgets/custom_text_field.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_text_bottom.dart';
import 'package:task/features/auth/presentation/views/widgets/passwoed_field.dart';
import 'package:task/features/auth/presentation/views/widgets/social_login_button.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: formKey,
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
                  CustomTextFormField(
                    controller: emailController,
                    prefixIcon: Icon(Icons.email, size: 26),
                    hintText: 'Email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  PasswordField(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      CustomCheckBox(
                        isChecked: isChecked,
                        onChecked: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
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
                  CustomTextBottom(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<LoginCubit>(
                          context,
                        ).login(emailController.text, passwordController.text);
                      }
                    },
                    text: 'Login',
                  ),
                  const SizedBox(height: 24),
                  const Text('Or', style: TextStyle(fontSize: 18)),
                  SizedBox(height: size.height * 0.02),
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
      ),
    );
  }
}
