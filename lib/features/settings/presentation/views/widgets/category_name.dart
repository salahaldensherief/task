import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({super.key, required this.category});
 final String category;
  @override
  Widget build(BuildContext context) {
    return  Text(
      category,
      style: TextStyle(
        color: Color(0xff666666),
        fontFamily: AppFonts.cairo,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
