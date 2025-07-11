import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;
    final double barHeight =
        screenWidth < 360 ? 30.0 : (screenWidth < 600 ? 40.0 : 35.0);
    final double barWidth =
        screenWidth < 360 ? 30.0 : (screenWidth < 600 ? 40.0 : 35.0);
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
                    height: barHeight,
                    width: barWidth,
                    decoration: BoxDecoration(
                      color: Color(0xffF5FBF9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Image.asset(
                        iconImage,
                        width: MediaQuery.of(context).size.width < 600 ? 23 : 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(title, style: TextStyle(fontFamily: AppFonts.cairo)),
                ],
              ),
            ),

            if (isShow == true && localizationCubit.state.locale.languageCode == 'en')
              Image.asset(AssetsImage.navIcon, width: 9)
            else if (isShow == true && localizationCubit.state.locale.languageCode == 'ar')
              Image.asset(AssetsImage.arNavIcon, width: 9)
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
