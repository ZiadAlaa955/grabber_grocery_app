import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  List<ProductModel> basket = [];

  ProductCubit() : super(ProductInitial());

  void toggle(ProductModel product) {
    if (basket.contains(product)) {
      basket.remove(product);
    } else {
      basket.add(product);
    }
    emit(ProductUpdated(products: basket));
  }

  void clearBasket() {
    basket.clear();
    emit(ProductUpdated(products: basket));
  }

  bool isProductInBasket(ProductModel product) => basket.contains(product);

  bool isBsketEmpty() => basket.isEmpty;
}
