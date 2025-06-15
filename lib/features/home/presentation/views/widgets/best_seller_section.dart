import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/assets.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Best seller',
          style: TextStyle(
            fontSize: 18,
            fontFamily: AppFonts.cairo,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          children: [
            Text(
              'View all  ',
              style: TextStyle(
                fontSize: 15,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
