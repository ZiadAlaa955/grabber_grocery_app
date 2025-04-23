import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:grabber_grocery_app/Widgets/product_details.dart';
import 'package:grabber_grocery_app/Widgets/product_image_stack.dart';

class HomeProductsCard extends StatelessWidget {
  const HomeProductsCard({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageStack(productModel: productModel),
            ProductDetails(productModel: productModel),
          ],
        ),
      ),
    );
  }
}
