import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class MainInfoAboutEstablishment extends StatelessWidget {
  const MainInfoAboutEstablishment({super.key, required this.establishment});

  final Establishment establishment;

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
              establishment.isRestaurant
                  ? 'Ресторан "${establishment.title}"'
                  : 'Кафе "${establishment.title}"',
              style: theme.textTheme.titleMedium!.copyWith(height: 1.2),
            ),
            Text(
              '${establishment.kitchen} кухня',
              style: theme.textTheme.labelSmall,
            ),
          ],
        ),
      ],
    );
  }
}
