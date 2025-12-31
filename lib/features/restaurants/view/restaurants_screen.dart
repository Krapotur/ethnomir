import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/restaurants/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RestaurantsScreen extends StatefulWidget {
  final String? kitchen;
  const RestaurantsScreen({super.key, this.kitchen});

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  List<Restaurant> restaurantsList = [
    Restaurant(
      title: 'Мудрый кочевник',
      kitchen: 'Восточная',
      raiting: '5.0',
      isRestaurant: false,
      delivery: 'Бесплатная',
      price: '470',
      imgTitle: 'kochevnik',
    ),
    Restaurant(
      title: 'Борщ',
      kitchen: 'Русская',
      raiting: '4.7',
      isRestaurant: false,
      delivery: 'от 900р',
      price: '500',
      imgTitle: 'borsh',
    ),
    Restaurant(
      title: 'Чайхана',
      kitchen: 'Восточная',
      delivery: 'от 1200р',
      raiting: '4.9',
      isRestaurant: true,
      price: '650',
      imgTitle: 'chai',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
                    title: 'Восточная',
                    isSelect: 'Восточная' == widget.kitchen,
                  ),
                  KitchenBtnContainerWidget(
                    title: 'Русская',
                    isSelect: 'Русская' == widget.kitchen,
                  ),
                  KitchenBtnContainerWidget(
                    title: 'Итальянская',
                    isSelect: 'Итальянская' == widget.kitchen,
                  ),
                  KitchenBtnContainerWidget(
                    title: 'Грузинская',
                    isSelect: 'Грузинская' == widget.kitchen,
                  ),
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
          onTap: () => AutoRouter.of(context).push(
            RestaurantRoute(
              restaurant: restaurantsList[index],
            ),
          ),
          child: CardRestaurantWidget(restaurant: restaurantsList[index]),
        ),
        separatorBuilder: (context, index) => SizedBox(height: 15),
      ),
    );
  }

  void getKitchenList(String kitchen) {
    List<Restaurant> newList = [];

    for (var rest in restaurantsList) {
      if (rest.kitchen == kitchen) {
        newList.add(rest);
      }
    }
    setState(() {
      restaurantsList = newList;
    });
  }
}
