import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';
import 'package:grabber_grocery_app/Widgets/app_bar_row.dart';
import 'package:grabber_grocery_app/Widgets/home_category_listview_builder.dart';
import 'package:grabber_grocery_app/Widgets/home_products_listview_builder.dart';
import 'package:grabber_grocery_app/Widgets/homw_carousel_slider_builder.dart';
import 'package:grabber_grocery_app/Widgets/navigation_bar.dart';
import 'package:grabber_grocery_app/Widgets/baskeet_bar.dart';
import 'package:grabber_grocery_app/Widgets/title_row.dart';

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
              HomeCategoryListViewBuilder(),
              const SizedBox(height: 30),
              const TitleRow(),
              const SizedBox(height: 30),
              HomeProductsListviewBuilder(),
            ],
          ),
          const BasketBar(),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
