import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task/core/utils/assets.dart';

import '../../../../../core/utils/app_colors.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Don’t have an account ? ',
            style: TextStyle(
              color: Color(0xff808080),
              fontFamily: AppFonts.cairo,
            ),
          ),
          TextSpan(text: ' ', style: TextStyle(fontFamily: AppFonts.cairo)),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Navigator.pushNamed(context, SignupView.routeName);
                  },
            text: 'Sign up',
            style: TextStyle(
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
