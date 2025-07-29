import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/auth/presentation/views/sign_up_view.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../l10n/app_localizations.dart';


class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: local.dontHaveAccount,
            style: TextStyle(
              color: Color(0xff808080),
              fontFamily: AppFonts.cairo,
            ),
          ),
          TextSpan(text: '  ', ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignUpView.routeName);
                  },
            text: local.signUp,
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
