import 'package:flutter/material.dart';

class ImagePositionWidget extends StatelessWidget {
  const ImagePositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage('assets/images/menu/shorpa.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
