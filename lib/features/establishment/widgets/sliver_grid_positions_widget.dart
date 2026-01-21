import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliverGridPositionsWidget extends StatelessWidget {
  const SliverGridPositionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();

    return SliverPadding(
      padding: EdgeInsetsGeometry.only(
        left: 20,
        top: 15,
        right: 20,
        bottom: 15,
      ),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          mainAxisExtent: 220,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return CardPositionWidget(position: model.positionsList[index]);
        }, childCount: model.positionsList.length),
      ),
    );
  }
}
