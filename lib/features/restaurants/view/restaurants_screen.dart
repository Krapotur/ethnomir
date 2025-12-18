import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/restaurants/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({super.key});

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Restaurant> restaurantsList = [
      Restaurant(
        title: 'Мудрый кочевник',
        kitchen: 'Восточная кухня',
        raiting: '5.0',
        isRestaurnt: false,
        delivery: 'Бесплатная',
        price: '470',
        imgTitle: 'kochevnik',
      ),
      Restaurant(
        title: 'Борщ',
        kitchen: 'Русская кухня',
        raiting: '4.7',
        isRestaurnt: false,
        delivery: 'от 900р',
        price: '500',
        imgTitle: 'borsh',
      ),
      Restaurant(
        title: 'Ресторан "Чайхана',
        kitchen: 'Восточная кухня',
        delivery: 'от 1200р',
        raiting: '4.9',
        isRestaurnt: true,
        price: '650',
        imgTitle: 'chai',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text('Рестораны'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SizedBox(
              height: 35,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                children: [
                  KitchenBtnContainerWidget(
                    title: 'Мексиканская',
                    isSelect: true,
                  ),
                  KitchenBtnContainerWidget(title: 'Русская'),
                  KitchenBtnContainerWidget(title: 'Итальянская'),
                  KitchenBtnContainerWidget(title: 'Грузинская'),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemCount: restaurantsList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => AutoRouter.of(
            context,
          ).push(RestaurantRoute(restaurant: restaurantsList[index])),
          child: CardRestaurantWidget(restaurant: restaurantsList[index]),
        ),
        separatorBuilder: (context, index) => SizedBox(height: 15),
      ),
    );
  }
}
