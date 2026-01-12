// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:ethnomir/features/alert/alert_screen.dart' as _i1;
import 'package:ethnomir/features/cart/view/cart_screen.dart' as _i2;
import 'package:ethnomir/features/establishment/view/establishment_screen.dart'
    as _i3;
import 'package:ethnomir/features/establishments/view/establishments_screen.dart'
    as _i4;
import 'package:ethnomir/features/home/view/home_screen.dart' as _i5;
import 'package:ethnomir/features/main/view/main_screen.dart' as _i6;
import 'package:ethnomir/features/profile/view/profile_screen.dart' as _i7;
import 'package:ethnomir/features/splash/view/splash_screen.dart' as _i8;
import 'package:ethnomir/repositories/models.dart' as _i11;
import 'package:flutter/material.dart' as _i10;

/// generated route for
/// [_i1.AlertScreen]
class AlertRoute extends _i9.PageRouteInfo<void> {
  const AlertRoute({List<_i9.PageRouteInfo>? children})
    : super(AlertRoute.name, initialChildren: children);

  static const String name = 'AlertRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.AlertScreen();
    },
  );
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute({List<_i9.PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartScreen();
    },
  );
}

/// generated route for
/// [_i3.EstablishmentScreen]
class EstablishmentRoute extends _i9.PageRouteInfo<EstablishmentRouteArgs> {
  EstablishmentRoute({
    _i10.Key? key,
    required _i11.Establishment establishment,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         EstablishmentRoute.name,
         args: EstablishmentRouteArgs(key: key, establishment: establishment),
         initialChildren: children,
       );

  static const String name = 'EstablishmentRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EstablishmentRouteArgs>();
      return _i3.EstablishmentScreen(
        key: args.key,
        establishment: args.establishment,
      );
    },
  );
}

class EstablishmentRouteArgs {
  const EstablishmentRouteArgs({this.key, required this.establishment});

  final _i10.Key? key;

  final _i11.Establishment establishment;

  @override
  String toString() {
    return 'EstablishmentRouteArgs{key: $key, establishment: $establishment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EstablishmentRouteArgs) return false;
    return key == other.key && establishment == other.establishment;
  }

  @override
  int get hashCode => key.hashCode ^ establishment.hashCode;
}

/// generated route for
/// [_i4.EstablishmentsScreen]
class EstablishmentsRoute extends _i9.PageRouteInfo<EstablishmentsRouteArgs> {
  EstablishmentsRoute({
    _i10.Key? key,
    String? kitchen,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         EstablishmentsRoute.name,
         args: EstablishmentsRouteArgs(key: key, kitchen: kitchen),
         initialChildren: children,
       );

  static const String name = 'EstablishmentsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EstablishmentsRouteArgs>(
        orElse: () => const EstablishmentsRouteArgs(),
      );
      return _i4.EstablishmentsScreen(key: args.key, kitchen: args.kitchen);
    },
  );
}

class EstablishmentsRouteArgs {
  const EstablishmentsRouteArgs({this.key, this.kitchen});

  final _i10.Key? key;

  final String? kitchen;

  @override
  String toString() {
    return 'EstablishmentsRouteArgs{key: $key, kitchen: $kitchen}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EstablishmentsRouteArgs) return false;
    return key == other.key && kitchen == other.kitchen;
  }

  @override
  int get hashCode => key.hashCode ^ kitchen.hashCode;
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.MainScreen]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.MainScreen();
    },
  );
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i8.SplashScreen]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.SplashScreen();
    },
  );
}
