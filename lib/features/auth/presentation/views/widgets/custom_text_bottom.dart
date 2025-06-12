// Flutter imports:
import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';

class CustomTextBottom extends StatelessWidget {
  CustomTextBottom({ super.key, this.onPressed, required this.text});
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      autofocus: true,
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        color: AppColors.primaryColor
        ),
        child: Center(child: Text(text,style: TextStyle(
            fontSize: 20,
            fontFamily: AppFonts.cairo,
            fontWeight: FontWeight.w800,
            color:AppColors.secColor),)),
      ),
    );
  }
}
