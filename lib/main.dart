import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber_grocery_app/Utils/app_router.dart';
import 'package:grabber_grocery_app/cubits/product_cubit/product_cubit.dart';

void main() {
  runApp(const GrabberApp());
}

class GrabberApp extends StatelessWidget {
  const GrabberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter().router,
        theme: ThemeData(
          fontFamily: GoogleFonts.inter().fontFamily,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
