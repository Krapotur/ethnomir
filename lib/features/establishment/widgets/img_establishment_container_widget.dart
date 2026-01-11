import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class ImgRestaurantContainerWidget extends StatelessWidget {
  const ImgRestaurantContainerWidget({super.key, required this.establishment});

  final Establishment establishment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage("assets/images/rest/${establishment.fileId}.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
