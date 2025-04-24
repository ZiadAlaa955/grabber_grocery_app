import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';
import 'package:grabber_grocery_app/Widgets/product_image_container.dart';

class ProductImageStack extends StatelessWidget {
  const ProductImageStack({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageProductContainer(
          image: productModel.image,
          width: 140,
          height: 120,
        ),
        Positioned(
          left: 105,
          top: 85,
          child: Material(
            elevation: 1.5,
            borderRadius: BorderRadius.circular(50),
            child: GestureDetector(
              onTap: productModel.onTap,
              child: productModel.icon,
            ),
          ),
        ),
      ],
    );
  }
}
