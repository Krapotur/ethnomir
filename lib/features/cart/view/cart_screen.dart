import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
      colors: [Color.fromARGB(255, 148, 148, 148), Color.fromARGB(255, 228, 228, 228)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Корзина',
          style: theme.textTheme.titleMedium!.copyWith(fontSize: 20),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => context.router.maybePop(),
          child: Icon(Icons.chevron_left, size: 35),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () => model.clearCart(),
              icon: Icon(Icons.delete_sweep_outlined, size: 33),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(250),
            gradient:  model.cart.isNotEmpty? linearPrimaryGradient : linearGreyGradient,
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
      ),
    );
  }
}
