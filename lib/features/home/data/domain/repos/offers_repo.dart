import 'package:task/features/home/data/models/offer_model.dart';
import 'package:task/features/home/data/source/offer_data_source.dart';

class OffersRepo {
  final OfferDataSource offerDataSource;

  OffersRepo(this.offerDataSource);
  Future<List<OfferModel>> fetchOffers() async {
    return await offerDataSource.getOffers();
  }
}
