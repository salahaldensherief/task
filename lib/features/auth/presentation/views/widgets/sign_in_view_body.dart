import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/core/widgets/custom_text_field.dart';
import 'package:task/core/widgets/dont_have_account_widget.dart';
import 'package:task/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_text_bottom.dart';
import 'package:task/features/auth/presentation/views/widgets/passwoed_field.dart';
import 'package:task/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                    key: cubit.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 60.h),
                        Image.asset(AssetsImage.logo, height: 80.h),
                        SizedBox(height: 40.h),
                        Text(
                          local.signInToContinue,
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(height: 40.h),
                        CustomTextFormField(
                          controller: cubit.emailController,
                          prefixIcon: Icon(FontAwesomeIcons.solidEnvelope, size: 24.sp),
                          hintText: local.email,
                          textInputType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 18.h),
                        PasswordField(
                          controller: cubit.passwordController,
                          hintText: local.password,
                        ),
                        SizedBox(height: 40.h),
                        BlocBuilder<LoginCubit, LoginState>(
                          buildWhen: (previous, current) =>
                          current is LoginCheckboxToggled,
                          builder: (context, state) {
                            return Row(
                              children: [
                                CustomCheckBox(
                                  isChecked: cubit.isChecked,
                                  onChecked: (value) {
                                    cubit.toggleCheckBox(value);
                                  },
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  local.rememberMe,
                                  style: const TextStyle(fontFamily: 'Cairo'),
                                ),
                                const Spacer(),
                                Text(
                                  local.forgotPassword,
                                  style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: 14.sp,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        SizedBox(height: 24.h),
                        CustomTextBottom(
                          onPressed: () {
                            cubit.login();
                          },
                          text: local.login,
                        ),
                        SizedBox(height: 28.h),
                        Text(
                          local.or,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.grayColor,
                          ),
                        ),
                        SizedBox(height: 24.h),
                        SocialLoginButton(
                          image: AssetsImage.googleIcon,
                          title: local.continueWithGoogle,
                          onPressed: () {},
                        ),
                        const Spacer(),
                        const DontHaveAnAccountWidget(),
                        SizedBox(height: 30.h),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
