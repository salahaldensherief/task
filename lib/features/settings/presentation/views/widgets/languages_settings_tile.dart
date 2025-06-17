import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import '../../../../../core/utils/assets.dart';

class LanguagesSettingsTile extends StatelessWidget {
  const LanguagesSettingsTile({
    super.key,
    this.isShow,
    required this.iconImage,
    required this.title,
    this.onTap,
  });

  final bool? isShow;
  final String iconImage;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double barHeight =
        screenWidth < 360 ? 30.0 : (screenWidth < 600 ? 40.0 : 35.0);
    final double barWidth =
        screenWidth < 360 ? 30.0 : (screenWidth < 600 ? 40.0 : 35.0);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon + title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Container(
                  height: barHeight,
                  width: barWidth,
                  decoration: BoxDecoration(
                    color: const Color(0xffF5FBF9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Image.asset(
                      iconImage,
                      width: screenWidth < 600 ? 23 : 20,
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Text(title, style: const TextStyle(fontFamily: 'Cairo')),
              ],
            ),
          ),

          // Language button + arrow
          Row(
            children: [
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Choose Language',
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(height: 16),
                            ListTile(
                              leading: Image.asset(
                                AssetsImage.languageIcon,
                                width: 20,
                              ),
                              title: const Text('العربية'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: Image.asset(
                                AssetsImage.languageIcon,
                                width: 20,
                              ),
                              title: const Text('English'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  'English',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              ),
              if (isShow == true)
                Image.asset(AssetsImage.navIcon, width: 9)
              else
                const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
