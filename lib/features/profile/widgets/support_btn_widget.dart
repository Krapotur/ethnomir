import 'package:flutter/material.dart';

class SupportBtnContainerWidget extends StatelessWidget {
  const SupportBtnContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    LinearGradient linearGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return GestureDetector(
      onTap: () {},
      child: Container(      
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: linearGradient,
        ),
        child: Row(
          crossAxisAlignment: .center,
          mainAxisAlignment: .center,
          children: [
            Icon(Icons.telegram, color: Colors.white, size: 30),
            Text('Telegram', style: TextStyle(color: Colors.white)),
          ],

        ),
      ),
    );
  }
}
