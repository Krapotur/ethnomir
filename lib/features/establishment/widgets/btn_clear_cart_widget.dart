import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BtnClearCartWidget extends StatelessWidget {
  const BtnClearCartWidget({super.key});

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
      onLongPress: () {
        model.clearCart();
        context.router.maybePop();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: linearGradient,
        ),
        child: Row(
          mainAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            Text(
              'Очистить корзину',
              style: theme.textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: .bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}