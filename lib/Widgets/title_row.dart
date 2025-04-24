import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 20),
        Text(
          'Fruits',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        Spacer(),
        Text(
          'See all',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
