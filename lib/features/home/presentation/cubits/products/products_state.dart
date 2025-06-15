part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}
final class ProductsLoading extends ProductsState {}
final class ProductsSuccess extends ProductsState {
  final List<ProductsModel> product;

  ProductsSuccess(this.product);
}
final class ProductsFailure extends ProductsState {
  final String message;

  ProductsFailure(this.message);
}
