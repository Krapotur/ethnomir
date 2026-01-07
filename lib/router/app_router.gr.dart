// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:ethnomir/features/home/view/home_screen.dart' as _i1;
import 'package:ethnomir/features/main/view/main_screen.dart' as _i2;
import 'package:ethnomir/features/profile/view/profile_screen.dart' as _i3;
import 'package:ethnomir/features/qr/qr.dart' as _i4;
import 'package:ethnomir/features/restaurant/view/restaurant_screen.dart'
    as _i5;
import 'package:ethnomir/features/restaurants/view/restaurants_screen.dart'
    as _i6;
import 'package:ethnomir/features/splash/view/splash_screen.dart' as _i7;
import 'package:ethnomir/repositories/models.dart' as _i10;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.MainScreen]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainScreen();
    },
  );
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i4.Qr]
class Qr extends _i8.PageRouteInfo<void> {
  const Qr({List<_i8.PageRouteInfo>? children})
    : super(Qr.name, initialChildren: children);

  static const String name = 'Qr';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.Qr();
    },
  );
}

/// generated route for
/// [_i5.RestaurantScreen]
class RestaurantRoute extends _i8.PageRouteInfo<RestaurantRouteArgs> {
  RestaurantRoute({
    _i9.Key? key,
    required _i10.Restaurant restaurant,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         RestaurantRoute.name,
         args: RestaurantRouteArgs(key: key, restaurant: restaurant),
         initialChildren: children,
       );

  static const String name = 'RestaurantRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RestaurantRouteArgs>();
      return _i5.RestaurantScreen(key: args.key, restaurant: args.restaurant);
    },
  );
}

class RestaurantRouteArgs {
  const RestaurantRouteArgs({this.key, required this.restaurant});

  final _i9.Key? key;

  final _i10.Restaurant restaurant;

  @override
  String toString() {
    return 'RestaurantRouteArgs{key: $key, restaurant: $restaurant}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RestaurantRouteArgs) return false;
    return key == other.key && restaurant == other.restaurant;
  }

  @override
  int get hashCode => key.hashCode ^ restaurant.hashCode;
}

/// generated route for
/// [_i6.RestaurantsScreen]
class RestaurantsRoute extends _i8.PageRouteInfo<RestaurantsRouteArgs> {
  RestaurantsRoute({
    _i9.Key? key,
    String? kitchen,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         RestaurantsRoute.name,
         args: RestaurantsRouteArgs(key: key, kitchen: kitchen),
         initialChildren: children,
       );

  static const String name = 'RestaurantsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RestaurantsRouteArgs>(
        orElse: () => const RestaurantsRouteArgs(),
      );
      return _i6.RestaurantsScreen(key: args.key, kitchen: args.kitchen);
    },
  );
}

class RestaurantsRouteArgs {
  const RestaurantsRouteArgs({this.key, this.kitchen});

  final _i9.Key? key;

  final String? kitchen;

  @override
  String toString() {
    return 'RestaurantsRouteArgs{key: $key, kitchen: $kitchen}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RestaurantsRouteArgs) return false;
    return key == other.key && kitchen == other.kitchen;
  }

  @override
  int get hashCode => key.hashCode ^ kitchen.hashCode;
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SplashScreen();
    },
  );
}
