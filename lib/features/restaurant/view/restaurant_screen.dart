import 'package:auto_route/auto_route.dart';
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
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            leading: BtnToBackScreenWidget(),
            iconTheme: IconThemeData(color: Colors.white),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: CardInfoAboutRestaurantWidget(
                isClose: isClose,
                restaurant: restaurant,
              ),
            ),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.2,
            flexibleSpace: Container(
              height: 200,
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
          ),
          SliverAppBar(
            primary: false,
            pinned: true,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: CategoriesListviewWidget(),
            ),
          ),
          SliverToBoxAdapter(child: CategoryTitleWidget()),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverList.separated(
              itemCount: 10,
              itemBuilder: (context, index) => CardPositionWidget(),
              separatorBuilder: (context, index) => SizedBox(height: 10),
            ),
          ),
        ],
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
