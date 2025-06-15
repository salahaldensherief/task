import 'package:task/features/home/data/models/products_model.dart';
import 'package:task/features/home/data/source/products_data_source.dart';

class ProductsRepo {
  final ProductsDataSource productsDataSource;

  ProductsRepo(this.productsDataSource);
  Future<List<ProductsModel>> fetchProduct() async {
    return await productsDataSource.getProducts();
  }
}
