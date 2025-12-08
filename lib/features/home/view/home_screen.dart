import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ЭТН', style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                image: DecorationImage(
                  image: AssetImage("assets/images/Vector.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text('МИР'),

          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TicketAndCalendarWidgets(),
        ],
      ),
    );
  }
}

