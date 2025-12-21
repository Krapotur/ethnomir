import 'package:flutter/material.dart';

class BackgroundImgScaffoldWidget extends StatelessWidget {
  const BackgroundImgScaffoldWidget({super.key, required this.imgTitle});

  final String imgTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/rest/$imgTitle.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
