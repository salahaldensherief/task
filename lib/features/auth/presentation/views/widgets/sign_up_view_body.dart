import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/widgets/have_an_account.dart';
import 'package:task/features/auth/presentation/cubits/siginup_cubit/signup_cubit.dart';
import 'package:task/features/auth/presentation/views/widgets/passwoed_field.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'custom_text_bottom.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



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
    final local = AppLocalizations.of(context)!;

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
                    local.createAccount,
                    style: const TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: size.height * 0.10),
                  CustomTextFormField(
                    controller: nameController,
                    prefixIcon: Icon(Icons.person, size: 26),
                    hintText: local.userName,
                    textInputType: TextInputType.name,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: emailController,
                    prefixIcon: Icon(Icons.email, size: 26),
                    hintText: local.email,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  PasswordField(
                    controller: passwordController,
                    hintText: local.password,
                  ),
                  const SizedBox(height: 20),
                  PasswordField(
                    controller: confirmedPasswordController,
                    hintText: local.confirmPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return local.confirmPassword;
                      } else if (value != passwordController.text) {
                        return local.passwordsDoNotMatch;
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
                    text:  local.signUp,
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
