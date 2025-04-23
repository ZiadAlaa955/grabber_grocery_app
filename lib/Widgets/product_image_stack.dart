import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';

class ProductImageStack extends StatelessWidget {
  const ProductImageStack({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 140,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Image(
              image: AssetImage(productModel.image),
            ),
          ),
        ),
        Positioned(
          left: 105,
          top: 80,
          child: Material(
            elevation: 1.5,
            borderRadius: BorderRadius.circular(50),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: GestureDetector(
                onTap: productModel.onTap,
                child: productModel.icon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
