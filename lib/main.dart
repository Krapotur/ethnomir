import 'package:ethnomir/core/theme/theme.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future<void> _configureWeb() async {
    // Дополнительные настройки для Web
    await Future.delayed(Duration.zero);

    // Можно добавить Service Worker регистрацию
    // или другие Web-specific настройки
  }

  if (kIsWeb) {
    // Убираем # только на Web
    setPathUrlStrategy();

    // Настройка для PWA
    await _configureWeb();
  }

  // Ориентация портретная по умолчанию
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CartModel())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
      routerConfig: appRouter.config(),
    );
  }
}
