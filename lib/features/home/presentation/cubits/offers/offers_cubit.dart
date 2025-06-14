import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/features/home/data/domain/repos/offers_repo.dart';
import 'package:task/features/home/data/models/offer_model.dart';

import '../../../data/source/offer_data_source.dart';

part 'offers_state.dart';

class OffersCubit extends Cubit<OffersState> {
  OffersCubit(this.offersRepo) : super(OffersInitial());
 final OffersRepo offersRepo;

  void loadOffers() async {
    emit(OffersLoading());
    try {
      List<OfferModel> offers = await offersRepo.fetchOffers();
      emit(OffersSuccess(offers));
      print("عدد العروض: ${offers.length}");
    } on Exception catch (e) {
    emit(OffersFailure('something wrong try later'));
    }


 }
}
