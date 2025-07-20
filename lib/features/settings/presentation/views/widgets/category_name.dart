import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({super.key, required this.category});
 final String category;
  @override
  Widget build(BuildContext context) {
    return  Text(
      category,
      style: TextStyle(
        fontSize: 14.sp,
        color: Color(0xff666666),
        fontFamily: AppFonts.cairo,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
