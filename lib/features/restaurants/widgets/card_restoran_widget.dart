import 'package:ethnomir/features/restaurants/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardRestoranWidget extends StatelessWidget {
  final ContentCardRestoranWidget restaurant;
  const CardRestoranWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(
              255,
              119,
              119,
              119,
            ).withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/rest/${restaurant.imgTitle}.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          restaurant,
        ],
      ),
    );
  }
}
