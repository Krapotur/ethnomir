import 'package:animated_text_kit/animated_text_kit.dart';
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
  @override
  void initState() {
    super.initState();

    new Future.delayed(
      const Duration(seconds: 3),
      () => AutoRouter.of(context).replace(MainRoute()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [Color.fromARGB(255, 233, 123, 39), Colors.white];
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 3, child: SizedBox()),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/auth_screen/logo.jpg',
                        width: 270,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'ВЕСЬ МИР ЗА ОДИН ДЕНЬ!',
                            colors: colorizeColors,
                            textStyle: TextStyle(
                              fontSize: 17.0,
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                        totalRepeatCount: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/auth_screen/street.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
