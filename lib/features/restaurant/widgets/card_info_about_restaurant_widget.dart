import 'package:ethnomir/core/widgets/card_widget.dart';
import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/restaurant/model/restaurant.dart';
import 'package:flutter/material.dart';

class CardInfoAboutRestaurantWidget extends StatelessWidget {
  const CardInfoAboutRestaurantWidget({
    super.key,
    required this.isClose,
    required this.restaurant,
  });

  final bool isClose;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 10.0, ),
      child: Badge(
        isLabelVisible: restaurant.isClosed,
        offset: Offset(-50, -5),
        backgroundColor: Colors.transparent,
        alignment: .topCenter,
        label: Container(
          color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          child: const Text(
            "Скоро закроется",
            style: TextStyle(color: Colors.white),
          ),
        ),
        child: CardWidget(
          child: Row(
            crossAxisAlignment: .start,
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  ImgRestaurantContainerWidget(restaurant: restaurant),
                  SizedBox(width: 10),
                  InfoAboutRestaurantWidget(restaurant: restaurant),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
