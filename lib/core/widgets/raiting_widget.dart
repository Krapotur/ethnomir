import 'package:flutter/material.dart';

class RaitingWidget extends StatelessWidget {
  const RaitingWidget({super.key, required this.raiting});

  final String raiting;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      crossAxisAlignment: .start,
      mainAxisSize: .min,
      children: [
        Icon(Icons.star, size: 22, color: Color(0xFFF47920)),
        Text(raiting, style: TextStyle(fontSize: 17)),
      ],
    );
  }
}
