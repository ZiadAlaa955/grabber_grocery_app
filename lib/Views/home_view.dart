import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';
import 'package:grabber_grocery_app/Widgets/app_bar_row.dart';
import 'package:grabber_grocery_app/Widgets/home_category_listview_builder.dart';
import 'package:grabber_grocery_app/Widgets/home_products_listview_builder.dart';
import 'package:grabber_grocery_app/Widgets/homw_carousel_slider_builder.dart';
import 'package:grabber_grocery_app/Widgets/navigation_bar.dart';
import 'package:grabber_grocery_app/Widgets/view_baskeet_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarRow(),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Column(
            children: [
              const HomeCarousleSliderBuilder(),
              const SizedBox(height: 10),
              SizedBox(
                height: 100,
                child: HomeCategoryListViewBuilder(),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    'Fruits',
                    style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: HomeProductsListviewBuilder(),
              ),
            ],
          ),
          const BasketBar(),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
