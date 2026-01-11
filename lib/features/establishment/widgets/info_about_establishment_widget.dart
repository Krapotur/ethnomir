import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class InfoAboutRestaurantWidget extends StatelessWidget {
  const InfoAboutRestaurantWidget({super.key, required this.establishment});

  final Establishment establishment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      mainAxisSize: .min,
      children: [
        Text(
          establishment.title,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            height: 1,
          ),
        ),
        Text(
          '${establishment.kitchen} кухня',
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
        Text(
          'Часы работы: 10:00 - 22:00',
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ],
    );
  }
}
