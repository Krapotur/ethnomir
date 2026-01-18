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
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbarWidget(),
          model.cart.isEmpty
              ? ImgEmptyCartWidget()
              : SliverToBoxAdapter(child: SizedBox.shrink()),
          SliverListPositionsWidget(),
          model.cart.isNotEmpty
              ? PromocodeWidget()
              : SliverToBoxAdapter(child: SizedBox.shrink()),
        ],
      ),
      bottomNavigationBar: const BtnConfirmOrderWidget(),
    );
  }
}
