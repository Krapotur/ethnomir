import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/cart/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbarWidget(),
          model.cart.isEmpty
              ? SliverFillRemaining(
                  child: Image.asset(
                    'assets/images/cart_empty.png', // Замените на свой URL/Asset
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                )
              : SliverToBoxAdapter(child: SizedBox.shrink()),
        ],
      ),
      bottomNavigationBar: const BtnConfirmOrderWidget(),
    );
  }
}
