import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/assets.dart';
import 'package:task/features/home/presentation/views/widgets/icons_app_bar.dart';

class UserHeaderWidget extends StatelessWidget {
  const UserHeaderWidget({super.key, required this.name, required this.info, required this.radius});
  final String name;
  final String info;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: radius,
          child: Image.asset(AssetsImage.userPhoto),
        ),
         SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style:  TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w900,
                fontSize: 12.sp,
              ),
            ),
            Text(
              info,
              style:  TextStyle(
                fontFamily: 'Cairo',
                color: Colors.black54,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}