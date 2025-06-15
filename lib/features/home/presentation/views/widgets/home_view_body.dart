import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:task/features/home/presentation/views/widgets/best_seller_widget.dart';
import 'package:task/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:task/features/home/presentation/views/widgets/offers_widget.dart';
import 'package:task/features/home/presentation/views/widgets/user_header_widget.dart';

import 'best_seller_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                UserHeaderWidget(),
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
