import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/core/widgets/card_widget.dart';
import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    bool isClose = true;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          BackgroundImgScaffoldWidget(imgTitle: restaurant.imgTitle),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              BtnToBackScreenWidget(),
              SizedBox(height: 70),
              CardInfoAboutRestaurantWidget(
                isClose: isClose,
                restaurant: restaurant,
              ),
              SizedBox(height: 10),
              CategoriesListviewWidget(),
              SizedBox(height: 10),
              CategoryTitleWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/menu/shorpa.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Шорпа с бараниной',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '360 г * 750 ккал',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: const Color.fromARGB(
                                        255,
                                        232,
                                        232,
                                        232,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size: 25,
                                      color: const Color.fromARGB(
                                        255,
                                        96,
                                        96,
                                        96,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '550 р.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
