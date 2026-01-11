import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [HomeRoute(), EstablishmentsRoute(), ProfileRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              onTap: (index) => _openPage(index, tabsRouter),
              currentIndex: tabsRouter.activeIndex,
              selectedItemColor: Color(0xFFF47920),
              selectedFontSize: 13,
              unselectedFontSize: 11,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 25),
                  label: 'Главная',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.fastfood, size: 25),
                  label: 'Рестораны',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp, size: 25),
                  label: 'Профиль',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
