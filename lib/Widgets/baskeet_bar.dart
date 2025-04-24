import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber_grocery_app/Utils/app_colors.dart';
import 'package:grabber_grocery_app/Widgets/basket_list_view_builder.dart';
import 'package:grabber_grocery_app/Widgets/bottom_sheet_content.dart';
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
                    BasketListViewBuilder(products: state.products),
                    const SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return AbsorbPointer(
                              child:
                                  BottomSheetContent(products: state.products),
                            );
                          },
                        );
                      },
                      child: const Text(
                        'View Basket',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
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
