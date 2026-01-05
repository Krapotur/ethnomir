import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class MainInfoAboutRestaurant extends StatelessWidget {
  const MainInfoAboutRestaurant({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurant.isRestaurant
                  ? 'Ресторан "${restaurant.title}"'
                  : 'Кафе "${restaurant.title}"',
              style: theme.textTheme.titleMedium!.copyWith(height: 1.2),
            ),
            Text(
              '${restaurant.kitchen} кухня',
              style:  theme.textTheme.labelSmall,
            ),
          ],
        ),
      ],
    );
  }
}
