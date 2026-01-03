import 'package:ethnomir/repositories/restaurant/model/restaurant.dart';
import 'package:flutter/material.dart';

class TitleRestaurantWidget extends StatelessWidget {
  const TitleRestaurantWidget({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        Row(
          crossAxisAlignment: .center,
          children: [
            Icon(Icons.coffee_outlined, size: 18),
            Text(
              restaurant.isRestaurant ? 'Ресторан' : 'Кафе',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ],
    );
  }
}
