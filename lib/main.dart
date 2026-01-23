import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:ethnomir/core/theme/theme.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  void _initSwipeBlocker() {
    // Блокируем ВСЕ системные свайпы и кнопку "Назад"
    BackButtonInterceptor.add(
      (bool stopDefaultButtonEvent, RouteInfo info) {
        print('Блокировка навигации браузера');

        // Всегда возвращаем true для блокировки
        // Это предотвратит:
        // 1. Свайп слева для "назад"
        // 2. Свайп справа для "вперед"
        // 3. Кнопку "Назад" в браузере
        return true;
      },
      name: 'BrowserSwipeBlocker',
      zIndex: 1000,
    );
  }

  // Инициализация блокировщика перед запуском приложения
  _initSwipeBlocker();

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
