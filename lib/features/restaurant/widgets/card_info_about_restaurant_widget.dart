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
      padding: const EdgeInsets.only(left: 10.0, top: 10, right: 10.0),
      child: SizedBox(
        height: 95,
        child: Stack(
          alignment: .bottomRight,
          children: [
            CardWidget(
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
            Align(
              alignment: .bottomRight,
              child: restaurant.isClosed
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Скоро закроется",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  : SizedBox.shrink(),
            ),
            Align(
              alignment: .topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, size: 16, color: Color(0xFFF47920)),
                    Text(restaurant.raiting),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
