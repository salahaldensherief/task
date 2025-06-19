import 'package:flutter/material.dart';
import 'package:task/core/widgets/custom_app_bar.dart';
import 'package:task/features/home/presentation/views/widgets/user_header_widget.dart';
import 'package:task/features/settings/data/profile_repo.dart';
import 'package:task/features/settings/presentation/views/profile_view.dart';
import 'package:task/features/settings/presentation/views/widgets/category_name.dart';
import 'package:task/features/settings/presentation/views/widgets/languages_settings_tile.dart';
import 'package:task/features/settings/presentation/views/widgets/settings_tile.dart';

import '../../../../../core/utils/assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: CustomAppBar(title: local.settings),
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
            CategoryName(category: local.settings),
            SizedBox(height: 30),
            SettingsTile(
              onTap: () {
                Navigator.pushNamed(context, ProfileView.routeName);
              },
              isShow: true,
              title: local.profile,
              iconImage: AssetsImage.profileIcon,
            ),
            SizedBox(height: 25),
            LanguagesSettingsTile(
              isShow: true,
              iconImage: AssetsImage.languageIcon,
              title: local.language,
            ),
            SizedBox(height: 30),
            CategoryName(category: local.callUs),
            SizedBox(height: 30),
            SettingsTile(
              onTap: () {},
              isShow: true,
              title: local.callUs,
              iconImage: AssetsImage.contactIcon,
            ),
            SizedBox(height: 25),
            SettingsTile(
              onTap: () {},
              isShow: true,
              title: local.aboutUs,
              iconImage: AssetsImage.exclamationIcon,
            ),
            SizedBox(height: 60),
            SettingsTile(
              onTap: () {
                ProfileRepo().signOut(context);
              },
              isShow: false,
              title: local.signOut,
              iconImage: AssetsImage.signoutIcon,
            ),
          ],
        ),
      ),
    );
  }
}