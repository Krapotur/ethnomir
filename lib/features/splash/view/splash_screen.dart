import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? hotel;
  String? room;
  String? params;
  bool isQueryParametrs = false;
  final currentUri = Uri.base;
  bool isWeb = false;

  @override
  void initState() {
    super.initState();
    getParams();
    Future.delayed(
      const Duration(seconds: 4),
      () => AutoRouter.of(context).replace(
        MediaQuery.of(context).size.width > 800
            ? AlertRoute()
            : RestaurantsRoute(),
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
    if (currentUri.query.isNotEmpty) {
      isQueryParametrs = true;

      List<String> querySplit = currentUri.query.split('&');
      List<String> queryHotelSplit = querySplit[0].split('=');
      List<String> queryRoomSplit = querySplit[1].split('=');

      hotel = queryHotelSplit[1];
      room = queryRoomSplit[1];
    }
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
                  Text('Параметры: ${params.toString()}'),
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

  //  Center(
  //   child: Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: <Widget>[
  //       Expanded(flex: 3, child: SizedBox()),
  //       Expanded(
  //         flex: 2,
  //         child: Column(
  //           children: [
  //             Column(
  //               children: <Widget>[
  //                 Image.asset(
  //                   'assets/images/auth_screen/dolina.png',
  //                   width: 270,
  //                   fit: BoxFit.cover,
  //                 ),
  // AnimatedTextKit(
  //   animatedTexts: [
  //     ColorizeAnimatedText(
  //       'ВЕСЬ МИР ЗА ОДИН ДЕНЬ',
  //       colors: colorizeColors,
  //       speed: Duration(milliseconds: 90),
  //       textStyle: TextStyle(
  //         fontSize: 17.0,
  //         color: theme.primaryColor,
  //       ),
  //     ),
  //   ],
  //   totalRepeatCount: 1,
  // ),
  //         ],
  //       ),
  //     ],
  //   ),
  // ),
  // Container(
  //   height: MediaQuery.of(context).size.height / 2,
  //   width: MediaQuery.of(context).size.width,
  //   decoration: BoxDecoration(
  //     image: DecorationImage(
  //       image: AssetImage('assets/images/auth_screen/street.jpg'),
  //       fit: BoxFit.cover,
  //     ),
  //   ),
  // ),
  //     ],
  //   ),
  // ),
  // );
}
