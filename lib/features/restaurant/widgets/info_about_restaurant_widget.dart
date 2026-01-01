import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class InfoAboutRestaurantWidget extends StatelessWidget {
  const InfoAboutRestaurantWidget({
    super.key,
    required this.isClose,
    required this.restaurant,
  });

  final bool isClose;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isClose == true ? EdgeInsets.only(top: 5) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurant.title,
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
           '${restaurant.kitchen} кухня',
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          Text(
            'Часы работы: 10:00 - 22:00',
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
