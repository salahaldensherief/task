import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:task/features/home/presentation/views/widgets/best_seller_widget.dart';
import 'package:task/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:task/features/home/presentation/views/widgets/offers_widget.dart';
import 'package:task/features/home/presentation/views/widgets/user_header_widget.dart';

import '../../../../../core/utils/assets.dart';
import 'best_seller_section.dart';
import 'icons_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    UserHeaderWidget(
                      radius: 25,
                      name: 'Salah',
                      info: local.welcome,
                    ),
                    Spacer(),
                    IconAppBar(image: AssetsImage.heartPhoto),
                    SizedBox(width: 20),
                    IconAppBar(image: AssetsImage.alarmPhoto),
                  ],
                ),
                SizedBox(height: 25),
                SearchBarWidget(),
                SizedBox(height: 25),
                OffersWidget(),
                SizedBox(height: 25),
                BestSellerSection(),
                SizedBox(height: 25),
                BestSellerListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
