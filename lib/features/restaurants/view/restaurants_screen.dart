import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/restaurants/widgets/widgets.dart';
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
    final List<ContentCardRestoranWidget> restaurantsList = [
      ContentCardRestoranWidget(
        title: 'Кафе "Борщ"',
        kitchen: 'Русская кухня',
        price: '500',
        imgTitle: 'borsh',
      ),
      ContentCardRestoranWidget(
        title: 'Ресторан "Чайхана"',
        kitchen: 'Восточная кухня',
        price: '650',
        imgTitle: 'chai',
      ),
      ContentCardRestoranWidget(
        title: 'Кафе "Мудрый кочевник"',
        kitchen: 'Восточная кухня',
        price: '470',
        imgTitle: 'kochevnik',
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
      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemCount: restaurantsList.length,
        itemBuilder: (context, index) =>
            CardRestoranWidget(restaurant: restaurantsList[index]),
        separatorBuilder: (context, index) => SizedBox(height: 15),
      ),
    );
  }
}
