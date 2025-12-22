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
      body: CustomScrollView(
        slivers: [SliverAppBar.large(title: Text(restaurant.title))],
      ),

      // Stack(
      //   children: [
      //     BackgroundImgScaffoldWidget(imgTitle: restaurant.imgTitle),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         SizedBox(height: 70),
      //         BtnToBackScreenWidget(),
      //         SizedBox(height: 70),
      //         CardInfoAboutRestaurantWidget(
      //           isClose: isClose,
      //           restaurant: restaurant,
      //         ),
      //         SizedBox(height: 10),
      //         CategoriesListviewWidget(),
      //         SizedBox(height: 10),
      //         CategoryTitleWidget(),
      //         Expanded(
      //           child: ListView.separated(
      //             padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      //             scrollDirection: Axis.vertical,
      //             itemBuilder: (context, index) => CardPositionWidget(),
      //             separatorBuilder: (context, index) => SizedBox(height: 10),
      //             itemCount: 5,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
