import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Widgets/app_bar_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarRow(),
      ),
    );
  }
}
