import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:grabber_grocery_app/Widgets/product_image_container.dart';

class ProductBottomSheet extends StatelessWidget {
  const ProductBottomSheet({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageProductContainer(
          image: product.image,
          height: 80,
          width: 80,
        ),
        const SizedBox(width: 13),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
            Text(
              '\$${product.price}'.toString(),
              style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Spacer(),
        Material(
          borderRadius: BorderRadius.circular(50),
          elevation: 5,
          child: const Icon(
            Icons.clear,
            color: Colors.red,
            size: 25,
          ),
        ),
      ],
    );
  }
}
