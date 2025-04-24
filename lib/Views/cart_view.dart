import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Cart'),
            Spacer(),
            Icon(Icons.receipt_long),
            Text('Orders')
          ],
        ),
      ),
    );
  }
}
