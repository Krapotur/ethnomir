import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), RestaurantsRoute(), ProfileRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: (index) => _openPage(index, tabsRouter),
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: Color(0xFFF47920),
            selectedFontSize: 13,
            unselectedFontSize: 11,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 22),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fastfood, size: 22),
                label: 'Рестораны',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp, size: 20),
                label: 'Профиль',
              ),
            ],
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
