import 'package:flutter/material.dart';
import 'package:grabber_grocery_app/app_router.dart';

void main() {
  runApp(const GrabberApp());
}

class GrabberApp extends StatelessWidget {
  const GrabberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
    );
  }
}
