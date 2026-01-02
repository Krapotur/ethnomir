import 'package:flutter/material.dart';

class ImgRestaurantContainerWidget extends StatelessWidget {
  const ImgRestaurantContainerWidget({super.key, required this.imgTitle});

  final String imgTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage("assets/images/rest/$imgTitle.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
