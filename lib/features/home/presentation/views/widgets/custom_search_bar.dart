import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController? searchController;
  const SearchBarWidget({super.key, this.searchController});
  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;

    final local = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: searchController,
                textDirection: isRTL ? TextDirection.rtl : TextDirection.ltr,
                decoration: InputDecoration(
                  hintText: local.searchHere,
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 14.sp,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: SvgPicture.asset(
                      AssetsImage.searchPhoto,
                      width: 17.w,
                      height: 17.h,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 32.w,
                    minHeight: 32.h,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: 52.w,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius:
                    isRTL
                        ? BorderRadius.only(
                          topLeft: Radius.circular(4.r),
                          bottomLeft: Radius.circular(4.r),
                        )
                        : BorderRadius.only(
                          topRight: Radius.circular(4.r),
                          bottomRight: Radius.circular(4.r),
                        ),
              ),
              child: SvgPicture.asset(
                fit: BoxFit.scaleDown,
                width: 20.w,
                height: 20.h,
                AssetsImage.filterPhoto,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
