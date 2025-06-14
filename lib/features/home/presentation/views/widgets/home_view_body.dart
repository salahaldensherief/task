import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:task/features/home/presentation/views/widgets/offers_widget.dart';
import 'package:task/features/home/presentation/views/widgets/user_header_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    UserHeaderWidget(),
                    SizedBox(height: 25),
                    SearchBarWidget(),
                    SizedBox(height: 25),
                    OffersWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
