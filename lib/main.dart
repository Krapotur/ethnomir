import 'package:ethnomir/core/theme/theme.dart';
import 'package:ethnomir/features/establishment/provider/model.dart';
import 'package:ethnomir/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => EstablishmentModel())],
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
