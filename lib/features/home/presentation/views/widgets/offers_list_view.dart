import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/home/presentation/cubits/offers/offers_cubit.dart';
import '../../../data/models/offer_model.dart';

class OffersListView extends StatelessWidget {
  const OffersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OffersCubit, OffersState>(
      builder: (context, state) {
        if (state is OffersLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is OffersSuccess) {
          final List<OfferModel> offers = state.offers;
          return SizedBox(
            height: 220.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: offers.length,
              itemBuilder: (context, index) {
                final offer = offers[index];
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: Image.asset(
                        fit: BoxFit.contain,
                        alignment: Alignment.centerLeft,
                        offer.offer2,
                        height: 173.h,
                        width: 302.w,
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        } else if (state is OffersFailure) {
          return Center(child: Text(state.message));
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
