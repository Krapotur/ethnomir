import 'package:flutter/material.dart';

final primaryTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color.fromARGB(255, 244, 246, 246),
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: Color.fromARGB(255, 87, 87, 87)),
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    unselectedIconTheme: IconThemeData(
      color: Color.fromARGB(255, 115, 115, 115),
    ),
    unselectedItemColor: Color.fromARGB(255, 68, 68, 68),
  ),
  iconTheme: const IconThemeData(color: Color.fromARGB(255, 95, 95, 95)),
  primaryColor: const Color(0xFFF47920),
  canvasColor: Colors.white,
  hintColor: Colors.grey,
  highlightColor: const Color.fromARGB(255, 243, 243, 243),
  dividerTheme: const DividerThemeData(
    color: Color.fromARGB(255, 217, 217, 217),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: const Color.fromARGB(255, 255, 255, 255),
    filled: true,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFFF47920),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 233, 123, 39),
  ),
  fontFamily: 'Gilroy',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 23, color: Color.fromARGB(255, 43, 43, 43)),
    bodyMedium: TextStyle(fontSize: 14, color: Color.fromARGB(255, 43, 43, 43)),
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 23,
      color: Color.fromARGB(255, 37, 37, 37),
    ),
    titleMedium: TextStyle(
      fontSize: 17,
      color: Color.fromARGB(255, 37, 37, 37),
    ),
    titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 37, 37, 37)),
    labelMedium: TextStyle(
      fontSize: 15,
      color: Color.fromARGB(255, 37, 37, 37),
    ),
    labelSmall: TextStyle(color: Color.fromARGB(255, 98, 98, 98), fontSize: 13),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: const Color.fromARGB(255, 233, 123, 39),
  canvasColor: Color.fromARGB(255, 179, 179, 179),
  appBarTheme: AppBarTheme(
    actionsIconTheme: IconThemeData(color: Color.fromARGB(255, 233, 233, 233)),
    backgroundColor: Color.fromARGB(255, 68, 68, 68),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 106, 106, 106),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color.fromARGB(255, 68, 68, 68),
    unselectedIconTheme: IconThemeData(
      color: Color.fromARGB(238, 192, 191, 191),
    ),
    unselectedItemColor: const Color.fromARGB(237, 229, 229, 229),
  ),
  iconTheme: const IconThemeData(color: Color.fromARGB(255, 216, 216, 216)),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Color.fromARGB(255, 206, 205, 205),
  ),
  progressIndicatorTheme: progressIndicatorTheme,
  fontFamily: 'Montserrat',
  dividerTheme: const DividerThemeData(
    color: Color.fromARGB(255, 179, 179, 179),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 23,
      color: Color.fromARGB(255, 216, 216, 216),
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Color.fromARGB(255, 233, 233, 233),
    ),
    titleMedium: TextStyle(
      fontSize: 17,
      color: Color.fromARGB(255, 216, 216, 216),
    ),
    titleSmall: TextStyle(
      fontSize: 15,
      color: Color.fromARGB(255, 216, 216, 216),
    ),
    labelMedium: TextStyle(
      fontSize: 15,
      color: Color.fromARGB(255, 48, 48, 48),
    ),
    labelSmall: TextStyle(
      color: Color.fromARGB(255, 216, 216, 216),
      fontSize: 14,
    ),
  ),
);

const progressIndicatorTheme = ProgressIndicatorThemeData(
  color: Color.fromARGB(255, 233, 123, 39),
);
