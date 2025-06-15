import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/features/home/data/domain/repos/products_repo.dart';

import '../../../data/models/products_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());
  final ProductsRepo productsRepo;

  void fetchProduct() async {
    emit(ProductsLoading());
    try {
      List<ProductsModel> product = await productsRepo.fetchProduct();
      emit(ProductsSuccess(product));
    } on Exception catch (e) {
      emit(ProductsFailure('something wrong try later'));
    }
  }
}
