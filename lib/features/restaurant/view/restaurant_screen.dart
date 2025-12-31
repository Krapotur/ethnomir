import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantScreen({super.key, required this.restaurant});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  double expandedHeight = 210;
  double toolbarHeight = 50;

  @override
  Widget build(BuildContext context) {
    bool isClose = true;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   backgroundColor: Colors.white,
          //   surfaceTintColor: Colors.white,
          //   leading: BtnToBackScreenWidget(),
          //   iconTheme: IconThemeData(color: Colors.white),
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(50),
          //   child: CardInfoAboutRestaurantWidget(
          //     isClose: isClose,
          //     restaurant: widget.restaurant,
          //   ),
          // ),
          //   pinned: true,
          //   expandedHeight: MediaQuery.of(context).size.height * 0.25,
          //   flexibleSpace: Container(
          //     height: 200,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(10),
          //         topRight: Radius.circular(10),
          //       ),
          //       image: DecorationImage(
          //         image: AssetImage(
          //           'assets/images/rest/${widget.restaurant.imgTitle}.png',
          //         ),
          //         fit: BoxFit.fill,
          //       ),
          //     ),
          //   ),
          // ),
          SliverAppBar(
            backgroundColor:Colors.white,
            surfaceTintColor: Colors.white,
            toolbarHeight: toolbarHeight,
            expandedHeight: expandedHeight,
            pinned: true,
            leading: BtnToBackScreenWidget(),
            centerTitle: true,
            title: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 252, 252, 252),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(widget.restaurant.title, style: theme.textTheme.titleLarge,),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(
                  'assets/images/rest/${widget.restaurant.imgTitle}.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            systemOverlayStyle:  SystemUiOverlayStyle.light,
          ),

          SliverAppBar(
            primary: false,
            pinned: true,
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromARGB(255, 233, 233, 233),
            surfaceTintColor: const Color.fromARGB(255, 233, 233, 233),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: CategoriesListviewWidget(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 260,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return CardPositionWidget();
              }, childCount: 10),
            ),
          ),
        ],
      ),
    );
  }
}

// class EstablishmentAppBar extends StatefulWidget {
//   const EstablishmentAppBar({super.key, required this.scrollController});

//   final ScrollController scrollController;

//   @override
//   State<EstablishmentAppBar> createState() => _EstablishmentAppBarState();
// }

// class _EstablishmentAppBarState extends State<EstablishmentAppBar> {
//   double expandedHeight = 280;
//   double toolbarHeight = 64;

//   bool isCollapsed = false;

//   Future scrollListener() async {
//     if (widget.scrollController.offset > expandedHeight - toolbarHeight) {
//       if (!isCollapsed) {
//         await Future.delayed(Duration(milliseconds: 125));
//         setState(() {
//           isCollapsed = true;
//         });
//       }
//     } else if (widget.scrollController.offset <
//         expandedHeight - toolbarHeight) {
//       if (isCollapsed) {
//         setState(() {
//           isCollapsed = false;
//         });
//       }
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     widget.scrollController.addListener(scrollListener);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
  //   return SliverAppBar(
  //     toolbarHeight: toolbarHeight,
  //     expandedHeight: expandedHeight,
  //     pinned: true,
  //     leading: BtnToBackScreenWidget(),
  //     title: Text(${isCollapsed? restaurant.title : ''}),
  //     flexibleSpace: FlexibleSpaceBar(
  //       background: Image(
  //         image: AssetImage('assets/images/rest/${restaurant.imgTitle}.png'),
  //       ),
  //     ),
  //     systemOverlayStyle: isCollapsed ? null : SystemUiOverlayStyle.light,
  //   );
  // }
// }
