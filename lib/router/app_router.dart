import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: SplashRoute.page),
    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'restaurants', page: RestaurantsRoute.page),
        AutoRoute(path: 'profile', page: ProfileRoute.page),
      ],
    ),
  ];
}
