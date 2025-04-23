part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductUpdated extends ProductState {
  final List<ProductModel> products;

  ProductUpdated({required this.products});
}
