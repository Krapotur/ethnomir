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
    final theme = Theme.of(context);
    final model = context.watch<CartModel>();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
                  icon: const Icon(Icons.delete_sweep_outlined, size: 33),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BtnConfirmOrderWidget(),
    );
  }
}
