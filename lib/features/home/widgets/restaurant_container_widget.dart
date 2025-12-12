import 'package:flutter/material.dart';

class RestaurantContainerWidget extends StatelessWidget {
  final String title;
  final String imgTitle;
  final Color color;

  const RestaurantContainerWidget({
    super.key,
    required this.title,
    required this.imgTitle, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Stack(
            alignment: AlignmentGeometry.bottomRight,
            children: [
              Container(
                width: double.infinity,
                height:  120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/$imgTitle.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    );
  }
}
