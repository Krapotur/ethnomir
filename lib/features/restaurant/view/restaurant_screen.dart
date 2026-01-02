import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantScreen({super.key, required this.restaurant});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  double expandedHeight = 210;
  double toolbarHeight = 50;

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppbarWidget(
            scrollController: scrollController,
            restaurant: widget.restaurant,
          ),
          SliverInfoRestaurantWidget(restaurant: widget.restaurant),
          const SliverCategoriesWidget(),
          const SliverGridPositionsWidget(),
        ],
      ),
    );
  }
}
