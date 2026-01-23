import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/cart/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliverListPositionsWidget extends StatelessWidget {
  const SliverListPositionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();

    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 20),
      sliver: SliverList.separated(
        itemCount: model.cart.length,
        itemBuilder: (context, index) =>
            CardPositionOrderWidget(position: model.cart[index]),
        separatorBuilder: (context, index) =>
            const Divider(color: Color.fromARGB(110, 231, 231, 231)),
      ),
    );
  }
}
