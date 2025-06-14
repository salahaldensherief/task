import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/helper/%20Injection/git_it.dart';
import 'package:task/features/home/data/domain/repos/offers_repo.dart';
import 'package:task/features/home/presentation/cubits/offers/offers_cubit.dart';
import 'package:task/features/home/presentation/views/widgets/offers_list_view.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OffersCubit>(
      create: (context) => getIt<OffersCubit>()..loadOffers(),
      child: OffersListView(),
    );
  }
}