import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber_grocery_app/Models/product_model.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';
import 'package:grabber_grocery_app/Utils/app_router.dart';
import 'package:grabber_grocery_app/Widgets/product_bottom_sheet.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ProductBottomSheet(product: products[index]),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.cartView);
            },
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Go to Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Badge(
                    largeSize: 15,
                    label: Text(products.length.toString()),
                    backgroundColor: Colors.red,
                    child: SvgPicture.asset(
                      height: 23,
                      'assets/images/icons/basket.svg',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
