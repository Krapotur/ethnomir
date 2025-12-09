import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarAvatarWidget(),
            AppbarTitleWidget(),
            SizedBox(width: 50),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15.0),
        child: Column(
          children: [
            TicketAndCalendarWidgets(),
            SizedBox(height: 20),
            NewsFeedWidget(),
            SizedBox(height: 20),
            EventsWidget(),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage("assets/images/bottombar.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
