import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/repositories/restaurant/model/restaurant.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:logger/web.dart';

@RoutePage()
class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  String? hotel;
  String? room;
  String? fragment;
  String? queryParams;
  bool isQueryParametrs = false;
  final currentUri = Uri.base;

  @override
  void initState() {
    super.initState();
    getParams();
    Future.delayed(
      const Duration(seconds: 4),
      () => AutoRouter.of(context).replace(
        RestaurantsRoute(),
        // RestaurantRoute(
        //   restaurant: Restaurant(
        //     title: 'Мудрый кочевник',
        //     kitchen: 'Восточная кухня',
        //     delivery: 'от 1200р',
        //     isRestaurant: true,
        //     isClosed: true,
        //     price: '650',
        //     raiting: '4.9',
        //     imgTitle: 'chai',
        //   ),
        // ),
      ),
    );
  }

  void getParams() {
    var logger = Logger(printer: PrettyPrinter());

    fragment = currentUri.fragment;

    if (fragment!.length > 4) {
      isQueryParametrs = true;
      queryParams = fragment!.substring(2);
      List<String> params = queryParams!.split('&');
      hotel = params[0].substring(6);
      room = params[1].substring(5);
      logger.i(params);
    }

    // hotel = queryParams?['hotel'];
    // room = queryParams?['room'];
  }

  @override
  Widget build(BuildContext context) {
    return isQueryParametrs
        ? Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: .min,
                children: [
                  Text('Адрес: $currentUri'),
                  Text('Параметры: ${queryParams.toString()}'),
                  Text('Гостиница: ${hotel.toString()}'),
                  Text('Номер: ${room..toString()}'),
                ],
              ),
            ),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: Image.asset(
              'assets/images/auth_screen/dolina.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          );
  }
}
