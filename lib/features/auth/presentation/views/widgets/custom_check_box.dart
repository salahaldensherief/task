import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 20.w,
        height: 20.h,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ?  Color(0xff6750A4) : AppColors.secColor ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.r),
            side: BorderSide(width: 2.3.w, color: isChecked ? Color(0xff6750A4) :Colors.black ),
          ),
        ),
        child:
            isChecked
                ? Center(child:Icon(FontAwesomeIcons.check,size: 14.sp,color: Colors.white,))
                : const SizedBox(),
      ),
    );
  }
}
