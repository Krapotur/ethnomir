import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class SliverInfoRestaurantWidget extends StatelessWidget {
  const SliverInfoRestaurantWidget({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CardInfoAboutRestaurantWidget(
        isClose: restaurant.isClosed,
        restaurant: restaurant,
      ),
    );
  }
}
