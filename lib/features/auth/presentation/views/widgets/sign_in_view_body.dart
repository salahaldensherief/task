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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  bool isChecked = false;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    final size = MediaQuery.of(context).size;

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
                   Text(
                     local.signInToContinue,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: size.height * 0.10),
                  CustomTextFormField(
                    controller: emailController,
                    prefixIcon: const Icon(Icons.email, size: 26),
                    hintText: local.email,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  PasswordField(
                    controller: passwordController,
                    hintText: local.password,
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
                       Text(
                        local.rememberMe,
                        style: TextStyle(fontFamily: 'Cairo'),
                      ),
                      const Spacer(),
                      Text(
                       local.forgotPassword,
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
                        BlocProvider.of<LoginCubit>(context).login(
                          emailController.text,
                          passwordController.text,
                        );
                      }
                    },
                    text: local.login,
                  ),
                  const SizedBox(height: 24),
                   Text(local.or, style: TextStyle(fontSize: 18)),
                  SizedBox(height: size.height * 0.02),
                  SocialLoginButton(
                    image: AssetsImage.googleIcon,
                    title: local.continueWithGoogle,
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
