import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousleSliderBuilder extends StatelessWidget {
  const HomeCarousleSliderBuilder({super.key});

  final List<String> sliders = const [
    'assets/images/sliders/Slider 1.png',
    'assets/images/sliders/Slider 2.png',
    'assets/images/sliders/Slider 3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: sliders.length,
      itemBuilder: (context, index, realIndex) {
        return Image.asset(sliders[index]);
      },
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayCurve: Curves.easeIn,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
      ),
    );
  }
}
