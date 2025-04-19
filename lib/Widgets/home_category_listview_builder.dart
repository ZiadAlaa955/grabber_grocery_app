import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/Models/category_model.dart';
import 'package:grabber_grocery_app/Widgets/category_item.dart';

class HomeCategoryListViewBuilder extends StatelessWidget {
  HomeCategoryListViewBuilder({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
      image: 'assets/images/categories/fruits.png',
      title: 'Fruits',
    ),
    CategoryModel(
      image: 'assets/images/categories/Milk & egg.png',
      title: 'Milk & egg',
    ),
    CategoryModel(
      image: 'assets/images/categories/Beverages.png',
      title: 'Beverages',
    ),
    CategoryModel(
      image: 'assets/images/categories/Laundry.png',
      title: 'Laundry',
    ),
    CategoryModel(
      image: 'assets/images/categories/vegetables.png',
      title: 'vegetables',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryItem(
          categoryModel: categories[index],
        );
      },
    );
  }
}
