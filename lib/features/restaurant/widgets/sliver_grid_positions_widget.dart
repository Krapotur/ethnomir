import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SliverGridPositionsWidget extends StatelessWidget {
  const SliverGridPositionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          mainAxisExtent: 260,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return CardPositionWidget();
        }, childCount: 10),
      ),
    );
  }
}
