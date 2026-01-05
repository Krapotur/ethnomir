import 'package:ethnomir/features/restaurants/widgets/main_info_about_restaurant.dart';
import 'package:ethnomir/features/restaurants/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class ContentCardRestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;

  const ContentCardRestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    LinearGradient linearGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainInfoAboutRestaurant(restaurant: restaurant),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: linearGradient,
                ),
                child: Text('45 мин', style: TextStyle(color: Colors.white)),
              ),
              Spacer(flex: 1),
              DeliveryWidget(linearGradient: linearGradient, delivery: restaurant.delivery),
              Spacer(flex: 4),
            ],
          ),
        ],
      ),
    );
  }
}



