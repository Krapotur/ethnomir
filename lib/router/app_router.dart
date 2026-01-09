import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/router/app_router.gr.dart';

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
