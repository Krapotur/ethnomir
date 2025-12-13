import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class RestaurantsWidget extends StatelessWidget {
  const RestaurantsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<RestaurantContainerWidget> restaurantsList = [
        RestaurantContainerWidget(title: 'Фастфуд', imgTitle: 'fastfood', color: Color(0xFFC8F8FF)),
        RestaurantContainerWidget(title: 'Русская', imgTitle: 'rus_kitchen', color: Color(0xFFFF7272)),
        RestaurantContainerWidget(title: 'Итальянская', imgTitle: 'italy_kitchen', color: Color(0xFFE5FFAE)),
        RestaurantContainerWidget(title: 'Мексиканская', imgTitle: 'mexico_kitchen', color: Color(0xFFEDC8FF)),
    ];

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Рестораны',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
            ),
            GestureDetector(
              onTap: () => AutoRouter.of(context).replaceAll([RestaurantsRoute()]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Все'), Icon(Icons.keyboard_arrow_right)],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 120,
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            scrollDirection: Axis.horizontal,
            itemCount: restaurantsList.length,
            itemBuilder: (context, index) => restaurantsList[index],
            separatorBuilder: (context, index) => SizedBox(width: 15),
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            UnderLineWidget(),
            SizedBox(width: 5),
            UnderLineWidget(),
            SizedBox(width: 5),
            UnderLineWidget(),
          ],
        ),
      ],
    );
  }
}
