import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/best_seller_widget.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(

        itemCount: 10,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
        return BestSellerWidget();
      },),
    );
  }
}
