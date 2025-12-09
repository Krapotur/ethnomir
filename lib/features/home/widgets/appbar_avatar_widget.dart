import 'package:flutter/material.dart';

class AppbarAvatarWidget extends StatelessWidget {
  const AppbarAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(
              255,
              197,
              197,
              197,
            ).withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: AssetImage("assets/images/avatar.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
