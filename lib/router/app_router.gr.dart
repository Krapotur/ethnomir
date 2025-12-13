// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:ethnomir/features/home/view/home_screen.dart' as _i1;
import 'package:ethnomir/features/main/view/main_screen.dart' as _i2;
import 'package:ethnomir/features/profile/view/profile_screen.dart' as _i3;
import 'package:ethnomir/features/restaurants/view/restaurants_screen.dart'
    as _i4;
import 'package:ethnomir/features/splash/view/splash_screen.dart' as _i5;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.MainScreen]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainScreen();
    },
  );
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i4.RestaurantsScreen]
class RestaurantsRoute extends _i6.PageRouteInfo<void> {
  const RestaurantsRoute({List<_i6.PageRouteInfo>? children})
    : super(RestaurantsRoute.name, initialChildren: children);

  static const String name = 'RestaurantsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.RestaurantsScreen();
    },
  );
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashScreen();
    },
  );
}
