import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:task/features/home/data/models/offer_model.dart';

import '../../../../core/utils/assets.dart';

class OfferDataSource{
  Future<List<OfferModel>> getOffers()async{
    var response = await rootBundle.loadString(JsonSource.offers);
    final List offer = jsonDecode(response);
    return offer.map((e) => OfferModel.fromJson(e)).toList();
  }
}