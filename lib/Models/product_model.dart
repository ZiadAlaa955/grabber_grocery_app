import 'package:flutter/material.dart';

class ProductModel {
  final String image;
  final String name;
  final double price;
  final double rating;
  final int ratingCount;
  final Function()? onTap;
  final Widget? icon;

  ProductModel({
    required this.price,
    required this.rating,
    required this.ratingCount,
    this.onTap,
    this.icon,
    required this.image,
    required this.name,
  });
}
