import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BtnToCartWidget extends StatelessWidget {
  const BtnToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final model = context.watch<CartModel>();

    LinearGradient linearGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient: linearGradient,
        ),
        child: Row(
          crossAxisAlignment: .center,
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              mainAxisSize: .min,
              children: [
                Text(
                  'В корзину',
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: .bold,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: AnimatedFlipCounter(
                      value: model.cart.length,
                      duration: const Duration(seconds: 1),
                      padding: const EdgeInsets.all(0),
                      curve: Curves.elasticOut,
                      wholeDigits: 2,
                      hideLeadingZeroes: true,
                      textStyle: theme.textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
              child: Row(
                mainAxisSize: .min,
                children: [
                  AnimatedFlipCounter(
                    value: model.getSumAmount(),
                    duration: const Duration(seconds: 1),
                    padding: const EdgeInsets.all(0),
                    curve: Curves.easeInToLinear,
                    wholeDigits: 2,
                    hideLeadingZeroes: true,
                    textStyle: theme.textTheme.bodyLarge!.copyWith(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    ' р.',
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () => context.router.push(CartRoute()),
    );
  }
}
