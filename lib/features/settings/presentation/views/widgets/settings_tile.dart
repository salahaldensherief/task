import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets.dart';
import '../cubits/loaclization_cubit.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.iconImage,
    required this.title,
    this.isShow = false, this.onTap,
  });
  final bool? isShow;
  final String iconImage;
  final String title;
final  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final localizationCubit = context.read<LocalizationCubit>();

    return GestureDetector(
onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF5FBF9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        iconImage,
                        width:20.w
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Text(title, style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: AppFonts.cairo)),
                ],
              ),
            ),

            if (isShow == true && localizationCubit.state.locale.languageCode == 'en')
              Image.asset(AssetsImage.navIcon, width: 9.w)
            else if (isShow == true && localizationCubit.state.locale.languageCode == 'ar')
              Image.asset(AssetsImage.arNavIcon, width: 9.w)
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
