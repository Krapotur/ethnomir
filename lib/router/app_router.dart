import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: SplashRoute.page),
    CustomRoute(
      path: '/establishments',
      page: EstablishmentsRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      predictiveBackPageTransitionsBuilder: TransitionsBuilders.noTransition,
      duration: Duration(milliseconds: 100),
    ),
    CustomRoute(
      path: '/establishment',
      page: EstablishmentRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      predictiveBackPageTransitionsBuilder: TransitionsBuilders.noTransition,
      duration: Duration(milliseconds: 200),
    ),
    CustomRoute(
      path: '/cart',
      page: CartRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      predictiveBackPageTransitionsBuilder: TransitionsBuilders.noTransition,
      duration: Duration(milliseconds: 200),
    ),
    CustomRoute(
      path: '/preparation-order',
      page: PreparationOrderRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      predictiveBackPageTransitionsBuilder: TransitionsBuilders.noTransition,
      duration: Duration(milliseconds: 200),
    ),
    AutoRoute(path: '/alert', page: AlertRoute.page),
  ];
}
