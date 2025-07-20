import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/ Injection/git_it.dart';
import '../../cubits/products/products_cubit.dart';
import 'best_seller_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => getIt<ProductsCubit>()..fetchProduct(),
      child: SizedBox(
        height: 272,
        child: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state is ProductsSuccess) {
              final products = state.product;
              return ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                      width: 250.w,


                      child: BestSellerWidget(product: products[index]));
                },
              );
            } else if (state is ProductsFailure) {
              return  Center(child: Text(local.failedToLoadProducts));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
