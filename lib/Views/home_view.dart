import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Widgets/app_bar_row.dart';
import 'package:grabber_grocery_app/Widgets/homw_carousel_slider_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<String> sliders = const [
    'assets/images/sliders/Slider 1.png',
    'assets/images/sliders/Slider 2.png',
    'assets/images/sliders/Slider 3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarRow(),
      ),
      body: Column(
        children: [
          HomeCarousleSliderBuilder(sliders: sliders),
        ],
      ),
    );
  }
}
