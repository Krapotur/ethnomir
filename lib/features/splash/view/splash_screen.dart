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

    Future.delayed(
      const Duration(seconds: 3),
      () => AutoRouter.of(context).replace(HomeRoute()),
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
            Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 3,
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
                              fontSize: 18.0,
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
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('created by', style: TextStyle(fontSize: 12)),
                    Text(
                      ' Abdullaev G.',
                      style: TextStyle(color: theme.primaryColor, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
