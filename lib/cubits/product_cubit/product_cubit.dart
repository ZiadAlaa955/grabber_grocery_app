import 'package:bloc/bloc.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  List<ProductModel> products = [];

  void addProduct(ProductModel product) {
    products.add(product);

    emit(ProductAdd(product: product));
  }

  void removeProduct(ProductModel product) {
    products.remove(product);

    emit(ProductRemove(product: product));
  }

  void toggle(ProductModel product) {
    if (products.contains(product)) {
      removeProduct(product);
    } else {
      addProduct(product);
    }
  }
}
