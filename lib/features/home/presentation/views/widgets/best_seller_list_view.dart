import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper/ Injection/git_it.dart';
import '../../cubits/products/products_cubit.dart';
import 'best_seller_widget.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsCubit>()..fetchProduct(),
      child: SizedBox(
        height: 270,
        child: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state is ProductsSuccess) {
              final products = state.product;
              return ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BestSellerWidget(product: products[index]);
                },
              );
            } else if (state is ProductsFailure) {
              return const Center(child: Text('Failed to load products. Please try again'));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
