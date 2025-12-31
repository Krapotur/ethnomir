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
    return Badge(
      largeSize: 50,
      alignment: Alignment.topCenter,
      backgroundColor: Colors.transparent,
      label: isClose == true ? BadgeLabelWidget() : SizedBox.shrink(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CardWidget(
          isDefaultSize: false,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImgRestaurantContainerWidget(imgTitle: restaurant.imgTitle),
              SizedBox(width: 10),
              InfoAboutRestaurantWidget(
                isClose: isClose,
                restaurant: restaurant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
