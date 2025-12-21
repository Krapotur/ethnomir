import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class MainInfoAboutRestaurant extends StatelessWidget {
  const MainInfoAboutRestaurant({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
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
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            Text(
              restaurant.kitchen,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.star, size: 16, color: Color(0xFFF47920)),
            Text(restaurant.raiting),
          ],
        ),
      ],
    );
  }
}
