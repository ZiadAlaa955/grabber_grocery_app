import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:grabber_grocery_app/Widgets/home_products_card.dart';
import 'package:grabber_grocery_app/cubits/product_cubit/product_cubit.dart';

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
      price: 2.99,
      rating: 4.5,
      ratingCount: 200,
    ),
    ProductModel(
      image: 'assets/images/products/Orange.png',
      name: 'Orange',
      price: 3.0,
      rating: 5.0,
      ratingCount: 230,
    ),
    ProductModel(
      image: 'assets/images/products/Pepper.png',
      name: 'Pepper',
      price: 2.50,
      rating: 4.8,
      ratingCount: 196,
    ),
    ProductModel(
      image: 'assets/images/products/purex.png',
      name: 'purex',
      price: 3.69,
      rating: 3.5,
      ratingCount: 350,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    bool isProductInBasket = false;

    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final ProductModel product = products[index];
              if (state is ProductUpdated) {
                isProductInBasket = state.products.contains(product);
              }
              return HomeProductsCard(
                productModel: ProductModel(
                  price: product.price,
                  rating: product.rating,
                  ratingCount: product.ratingCount,
                  image: product.image,
                  name: product.name,
                  icon: isProductInBasket
                      ? const Icon(Icons.clear, color: Colors.red)
                      : const Icon(Icons.add),
                  onTap: () {
                    BlocProvider.of<ProductCubit>(context).toggle(product);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
