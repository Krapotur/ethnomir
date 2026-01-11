import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/restaurant/view/restaurant_screen.dart';
import 'package:ethnomir/features/splash/view/view.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: SplashRoute.page),
    CustomRoute(
      path: '/restaurants',
      page: RestaurantsRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      predictiveBackPageTransitionsBuilder: TransitionsBuilders.noTransition,
      duration: Duration(milliseconds: 100)

    ),
    CustomRoute(
      path: '/restaurant',
      page: RestaurantRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      predictiveBackPageTransitionsBuilder: TransitionsBuilders.noTransition,
      duration: Duration(milliseconds: 200)
    ),
    AutoRoute(path: '/alert', page: AlertRoute.page),
  ];
}

// class AppRouterGo {
//   GoRouter router = GoRouter(
//     routes:[
//       GoRoute(path: '/', 
//       pageBuilder: (context, state) => MaterialPage(child: SplashScreen()),
//       ),
//       GoRoute(path: '/restaurants', 
//       pageBuilder: (context, state) => MaterialPage(child: RestaurantScreen()),
//       )
//     ] 
//   );
// }