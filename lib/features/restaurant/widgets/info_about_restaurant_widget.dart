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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, size: 16, color: Color(0xFFF47920)),
                  Text(restaurant.raiting),
                ],
              ),
            ],
          ),
          Text(
            restaurant.kitchen,
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
