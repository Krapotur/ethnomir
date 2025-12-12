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
    return Scaffold(
      appBar: AppBar(
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
      body: Column(children: []),
    );
  }
}
