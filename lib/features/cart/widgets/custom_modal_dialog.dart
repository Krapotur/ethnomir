import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomModalDialog extends StatelessWidget {
  const CustomModalDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();
    final theme = Theme.of(context);

    LinearGradient linearPrimaryGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            Text('Очистка корзины', style: theme.textTheme.titleLarge),
            const SizedBox(height: 15),
            Text(
              'Вы действительно хотите очистить корзину?',
              style: theme.textTheme.bodyMedium!.copyWith(fontSize: 17),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                model.clearCart();
                context.router.maybePop();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  gradient: linearPrimaryGradient,
                ),
                child: Text(
                  'Да, очистить',
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => context.router.maybePop(),
              child: Text(
                'Отменить',
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.primaryColor,
                  fontWeight: .bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
