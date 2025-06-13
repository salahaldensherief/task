import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/widgets/have_an_account.dart';
import 'package:task/features/auth/presentation/cubits/siginup_cubit/signup_cubit.dart';
import 'package:task/features/auth/presentation/views/widgets/passwoed_field.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'custom_text_bottom.dart';

class SignUpViewBody extends StatefulWidget {
  SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmedPasswordController =
      TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                  const Text(
                    'Create a new account',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: size.height * 0.10),
                  CustomTextFormField(
                    controller: nameController,
                    prefixIcon: Icon(Icons.person, size: 26),
                    hintText: 'User name',
                    textInputType: TextInputType.name,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: emailController,
                    prefixIcon: Icon(Icons.email, size: 26),
                    hintText: 'Email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  PasswordField(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 20),
                  PasswordField(
                    controller: confirmedPasswordController,
                    hintText: 'Confirm password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      } else if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 30),
                  CustomTextBottom(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<SignupCubit>(context).signUp(
                          emailController.text,
                          passwordController.text,
                          nameController.text,
                        );
                      }
                    },
                    text: 'Sign up',
                  ),
                  SizedBox(height: size.height * 0.15),
                  const HaveAnAccountWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
