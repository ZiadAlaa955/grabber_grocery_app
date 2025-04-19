import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:grabber_grocery_app/Widgets/home_products_card.dart';

class HomeProductsListviewBuilder extends StatelessWidget {
  HomeProductsListviewBuilder({super.key});

  final List<ProductModel> products = [
    ProductModel(
      image: 'assets/images/products/Banana.png',
      name: 'Banana',
    ),
    ProductModel(
      image: 'assets/images/products/lemon.png',
      name: 'Lemon',
    ),
    ProductModel(
      image: 'assets/images/products/Orange.png',
      name: 'Orange',
    ),
    ProductModel(
      image: 'assets/images/products/Pepper.png',
      name: 'Pepper',
    ),
    ProductModel(
      image: 'assets/images/products/purex.png',
      name: 'purex',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return HomeProductsCard(
          productModel: products[index],
        );
      },
    );
  }
}
