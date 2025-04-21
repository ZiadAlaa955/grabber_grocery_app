import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:grabber_grocery_app/Widgets/home_products_card.dart';

class HomeProductsListviewBuilder extends StatelessWidget {
  HomeProductsListviewBuilder({super.key});

  final List<ProductModel> products = [
    ProductModel(
      image: 'assets/images/products/Banana.png',
      name: 'Banana',
      price: 3.99,
      rating: 4.8,
      ratingCount: 287,
    ),
    ProductModel(
      image: 'assets/images/products/lemon.png',
      name: 'Lemon',
      price: 3.99,
      rating: 4.8,
      ratingCount: 287,
    ),
    ProductModel(
      image: 'assets/images/products/Orange.png',
      name: 'Orange',
      price: 3.99,
      rating: 4.8,
      ratingCount: 287,
    ),
    ProductModel(
      image: 'assets/images/products/Pepper.png',
      name: 'Pepper',
      price: 3.99,
      rating: 4.8,
      ratingCount: 287,
    ),
    ProductModel(
      image: 'assets/images/products/purex.png',
      name: 'purex',
      price: 3.99,
      rating: 4.8,
      ratingCount: 287,
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
