import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: SplashRoute.page),
    AutoRoute(path: '/restaurants', page: RestaurantsRoute.page),
    AutoRoute(path: '/restaurant', page: RestaurantRoute.page),
    AutoRoute(path: '/alert', page: AlertRoute.page),
  ];
}