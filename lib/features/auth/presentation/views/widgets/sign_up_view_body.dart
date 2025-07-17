import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/features/auth/presentation/cubits/siginup_cubit/signup_cubit.dart';
import 'package:task/features/auth/presentation/views/widgets/passwoed_field.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/have_an_account.dart';
import 'custom_text_bottom.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<SignupCubit>(context);
    final size = MediaQuery.of(context).size;
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: cubit.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 116.23.h),
                  Image.asset(AssetsImage.logo, height: 80.h,),
                  SizedBox(height: 40.23.h),
                  Text(
                    local.createAccount,
                    style:  TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  CustomTextFormField(
                    controller: cubit.nameController,
                    prefixIcon:  Icon(Icons.person, size: 24.sp),
                    hintText: local.userName,
                    textInputType: TextInputType.name,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: cubit.emailController,
                    prefixIcon:  Icon(Icons.email, size: 24.sp),
                    hintText: local.email,
                    textInputType: TextInputType.emailAddress,
                  ),
                   SizedBox(height: 20.h),
                  PasswordField(
                    controller: cubit.passwordController,
                    hintText: local.password,
                  ),
                   SizedBox(height: 20.h),
                  PasswordField(
                    controller: cubit.confirmedPasswordController,
                    hintText: local.confirmPassword,
                    validator: (value) => cubit.validateConfirmPassword(value),
                  ),
                   SizedBox(height: 35.h),
                  CustomTextBottom(
                    onPressed: () => cubit.signUp(),
                    text: local.signUp,
                  ),
                  SizedBox(height: 70.h),
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
