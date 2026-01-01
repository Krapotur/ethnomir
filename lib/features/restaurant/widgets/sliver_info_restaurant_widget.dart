import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class SliverInfoRestaurantWidget extends StatelessWidget {
  const SliverInfoRestaurantWidget({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      primary: false,
      pinned: false,
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: CardInfoAboutRestaurantWidget(
          isClose: restaurant.isClosed,
          restaurant: restaurant,
        ),
      ),
    );
  }
}
