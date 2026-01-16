import 'package:ethnomir/features/cart/provider/model.dart';
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
    LinearGradient linearGreyGradient = LinearGradient(
      colors: [
        Color.fromARGB(255, 148, 148, 148),
        Color.fromARGB(255, 228, 228, 228),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250),
          gradient: model.cart.isNotEmpty
              ? linearPrimaryGradient
              : linearGreyGradient,
        ),
        child: Row(
          mainAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            Text(
              'Оформить заказ',
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
