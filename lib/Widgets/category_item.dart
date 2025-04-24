import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            radius: 32,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image(
                image: AssetImage(categoryModel.image),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            categoryModel.title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}



// Container(
          //   decoration: BoxDecoration(
          //     color: Colors.grey.shade200,
          //     borderRadius: BorderRadius.circular(50),
          //   ),
          //   width: 70,
          //   height: 70,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Image(
          //       image: AssetImage(categoryModel.image),
          //       height: 60,
          //       width: 60,
          //     ),
          //   ),
          // ),