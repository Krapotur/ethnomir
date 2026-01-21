import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BtnConfirmOrderWidget extends StatelessWidget {
  const BtnConfirmOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final model = context.watch<CartModel>();

    LinearGradient linearPrimaryGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return GestureDetector(
      onTap: () => model.cart.isEmpty
          ? context.router.replaceAll([EstablishmentsRoute()])
          : context.router.push(PreparationOrderRoute()),
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250),
          gradient: linearPrimaryGradient,
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          mainAxisSize: .min,
          children: [
            Text(
              model.cart.isEmpty ? 'Перейти к ресторанам' : 'Оформить заказ',
              style: theme.textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: .bold,
              ),
            ),
            model.cart.isEmpty
                ? const SizedBox.shrink()
                : Text(
                    '${model.getSumAmount().toString()} р.',
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
