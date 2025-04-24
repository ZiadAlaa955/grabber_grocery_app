import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/icons/motorcycle.svg',
          height: 16,
        ),
        const SizedBox(width: 12),
        const Text(
          '61 Hopper street..',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_down,
          size: 30,
        ),
        const Spacer(),
        SvgPicture.asset(
          'assets/images/icons/basket.svg',
          height: 25,
        ),
      ],
    );
  }
}
