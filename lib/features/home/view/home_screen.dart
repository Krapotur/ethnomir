import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        surfaceTintColor: const Color.fromARGB(255, 245, 245, 245),
        centerTitle: true,
        title: AppbarTitleWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15.0, right: 15),
        child: ListView(
          children: [
            TicketAndCalendarWidgets(),
            SizedBox(height: 5),
            NewsFeedWidget(),
            SizedBox(height: 10),
            EventsWidget(),
            SizedBox(height: 15),
            RestaurantsWidget(),
          ],
        ),
      ),
    );
  }
}
