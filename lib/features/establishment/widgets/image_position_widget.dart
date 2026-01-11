import 'package:flutter/material.dart';

class ImagePositionWidget extends StatelessWidget {
  final String positionImg;
  const ImagePositionWidget({super.key, required this.positionImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/menu/$positionImg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
