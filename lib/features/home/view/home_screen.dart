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
        title: Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            image: DecorationImage(
              image: AssetImage("assets/images/ethnomir.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),

        centerTitle: true,
      ),
      body: Column(children: [TicketAndCalendarWidgets()]),
    );
  }
}
