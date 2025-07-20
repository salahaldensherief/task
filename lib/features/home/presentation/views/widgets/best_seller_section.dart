import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          local.bestSeller,
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: AppFonts.cairo,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          children: [
            Text(
              local.viewAll,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 4.w,),
            Icon(
              Icons.arrow_forward_ios,
              size: 10.w,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
