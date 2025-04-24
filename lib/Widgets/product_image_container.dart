import 'package:flutter/material.dart';

class ImageProductContainer extends StatelessWidget {
  const ImageProductContainer({
    super.key,
    required this.image,
    required this.height,
    required this.width,
  });

  final String image;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
