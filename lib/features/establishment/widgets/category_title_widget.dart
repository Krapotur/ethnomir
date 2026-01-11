import 'package:flutter/material.dart';

class CategoryTitleWidget extends StatelessWidget {
  const CategoryTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
        'Популярное',
        style: TextStyle(
          color: Color(0xFFF47920),
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
      ),
    );
  }
}
