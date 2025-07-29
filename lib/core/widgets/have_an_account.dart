import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/auth/presentation/views/sign_in_view.dart';

import '../../l10n/app_localizations.dart';
import '../utils/app_colors.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: local.alreadyHaveAccount,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w900,
              fontFamily: AppFonts.cairo,
              color: Color(0xff808080),
            ),
          ),
          TextSpan(text: '  ', ),

          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
              Navigator.pushReplacementNamed(context, SignInView.routeName);
                  },
            text: local.login,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w900,
              fontFamily: AppFonts.cairo,

              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
