import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class RestaurantsWidget extends StatelessWidget {
  const RestaurantsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<RestaurantContainerWidget> restaurantsList = [
      const RestaurantContainerWidget(
        title: 'Фастфуд',
        imgTitle: 'fastfood',
        color: Color(0xFFC8F8FF),
      ),
      const RestaurantContainerWidget(
        title: 'Русская',
        imgTitle: 'rus_kitchen',
        color: Color(0xFFFF7272),
      ),
      const RestaurantContainerWidget(
        title: 'Итальянская',
        imgTitle: 'italy_kitchen',
        color: Color(0xFFE5FFAE),
      ),
      const RestaurantContainerWidget(
        title: 'Восточная',
        imgTitle: 'mexico_kitchen',
        color: Color(0xFFEDC8FF),
      ),
    ];

    return Column(
      children: [
        Row(
          crossAxisAlignment: .end,
          mainAxisAlignment: .spaceBetween,
          children: [
            Text('Рестораны', style: theme.textTheme.titleLarge),
            GestureDetector(
              onTap: () =>
                  AutoRouter.of(context).replaceAll([RestaurantsRoute()]),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text('Все', style: theme.textTheme.bodyMedium),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 120,
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            scrollDirection: Axis.horizontal,
            itemCount: restaurantsList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => AutoRouter.of(context).replaceAll([
                RestaurantsRoute(kitchen: restaurantsList[index].title),
              ]),
              child: restaurantsList[index],
            ),
            separatorBuilder: (context, index) => SizedBox(width: 15),
          ),
        ),
        const SizedBox(height: 5),
        const Row(
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
