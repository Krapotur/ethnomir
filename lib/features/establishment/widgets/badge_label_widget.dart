import 'package:flutter/material.dart';

class BadgeLabelWidget extends StatelessWidget {
  const BadgeLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(color: Colors.red),
      child: const Text(
        'Скоро закроется',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
