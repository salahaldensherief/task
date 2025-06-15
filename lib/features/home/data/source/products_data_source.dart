import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:task/features/home/data/models/products_model.dart';

import '../../../../core/utils/assets.dart';
import '../models/offer_model.dart';

class ProductsDataSource{
  Future<List<ProductsModel>> getOffers()async{
    var response = await rootBundle.loadString(JsonSource.products);
    final List offer = jsonDecode(response);
    return offer.map((e) => ProductsModel.fromJson(e)).toList();
  }
}