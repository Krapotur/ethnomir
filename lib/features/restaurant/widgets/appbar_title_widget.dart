import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class AppbarTitleWidget extends StatelessWidget {
  const AppbarTitleWidget({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          Row(
            crossAxisAlignment: .center,
            mainAxisSize: .min,
            children: [
              Icon(Icons.coffee_outlined, size: 18),
              SizedBox(width: 2),
              Text(
                restaurant.isRestaurant ? 'Ресторан' : 'Кафе',
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          Text(
            '«${restaurant.title}»',
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
