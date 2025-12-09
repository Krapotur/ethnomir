import 'package:flutter/material.dart';

class AppbarTitleWidget extends StatelessWidget {
  const AppbarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        image: DecorationImage(
          image: AssetImage("assets/images/ethnomir.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
