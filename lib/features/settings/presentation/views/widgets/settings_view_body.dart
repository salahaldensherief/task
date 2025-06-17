import 'package:flutter/material.dart';
import 'package:task/core/widgets/custom_app_bar.dart';
import 'package:task/features/home/presentation/views/widgets/user_header_widget.dart';
import 'package:task/features/settings/presentation/views/profile_view.dart';
import 'package:task/features/settings/presentation/views/widgets/category_name.dart';
import 'package:task/features/settings/presentation/views/widgets/settings_tile.dart';

import '../../../../../core/utils/assets.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Settings'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 25),
            UserHeaderWidget(
              radius: 35,
              name: 'Salah',
              info: 'salah48@gmail.com',
            ),
            SizedBox(height: 30),
            CategoryName(category: 'Settings'),
            SizedBox(height: 30),
            SettingsTile(
              onTap: (){
                Navigator.pushNamed(context, ProfileView.routeName);
              },
              isShow: true,
              title: 'Profile',
              iconImage: AssetsImage.profileIcon,
            ),
            SizedBox(height: 25),
            SettingsTile(
              onTap: (){},
              isShow: true,
              title: 'Languages',
              iconImage: AssetsImage.languageIcon,
            ),
            SizedBox(height: 30),
            CategoryName(category: 'Contact us'),
            SizedBox(height: 30),
            SettingsTile(
              onTap: (){},
              isShow: true,
              title: 'Call us',
              iconImage: AssetsImage.contactIcon,
            ),
            SizedBox(height: 25),
            SettingsTile(
              onTap: (){},
              isShow: true,
              title: 'About us',
              iconImage: AssetsImage.exclamationIcon,
            ),
            SizedBox(height: 60),
            SettingsTile(
              onTap: (){

              },
              isShow: false,
              title: 'Sign out',
              iconImage: AssetsImage.signoutIcon,
            ),
          ],
        ),
      ),
    );
  }
}
