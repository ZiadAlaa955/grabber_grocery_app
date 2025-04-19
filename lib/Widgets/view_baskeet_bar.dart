import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';

class BasketBar extends StatelessWidget {
  const BasketBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(
                    'assets/images/products/Banana.png',
                  ),
                ),
              ),
              const SizedBox(width: 6),
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(
                    'assets/images/products/lemon.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
                child: VerticalDivider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              Text(
                'View Basket',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 10),
              SvgPicture.asset(
                height: 23,
                'assets/images/icons/basket.svg',
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
