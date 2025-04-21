part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductAdd extends ProductState {
  final ProductModel product;

  ProductAdd({required this.product});
}

final class ProductRemove extends ProductState {
  final ProductModel product;

  ProductRemove({required this.product});
}
