import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';
import 'package:grabber_grocery_app/cubits/product_cubit/product_cubit.dart';

class BasketBar extends StatelessWidget {
  const BasketBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductUpdated && state.products.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: ListView.builder(
                          itemCount: state.products.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade200,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image.asset(
                                      state.products[index].image,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 6),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    GestureDetector(
                      onDoubleTap: () {},
                      child: Text(
                        'View Basket',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Badge(
                      largeSize: 15,
                      label: Text(state.products.length.toString()),
                      backgroundColor: Colors.red,
                      child: SvgPicture.asset(
                        height: 23,
                        'assets/images/icons/basket.svg',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
