import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';

class BasketListViewBuilder extends StatelessWidget {
  const BasketListViewBuilder({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.45,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(products[index].image),
                  ),
                ),
                const SizedBox(width: 6),
              ],
            );
          },
        ),
      ),
    );
  }
}
