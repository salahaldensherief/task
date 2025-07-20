import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconAppBar extends StatelessWidget {
  const IconAppBar({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          height: 40.h,

          width:40.w,
          decoration: BoxDecoration(
            color: Color(0xffF5FBF9),
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              width: 20.w

            ),
          ),
        ),
      ],
    );
  }
}
