import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/repositories/restaurant/model/restaurant.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(microseconds: 1),
      () => AutoRouter.of(context).replace(
        // ProfileRoute()
        // HomeRoute(),
        Qr(),
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    List colorizeColors = [theme.primaryColor, Colors.white];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Image.asset(
        'assets/images/auth_screen/dolina.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );

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
}
