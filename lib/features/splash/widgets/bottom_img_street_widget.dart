import 'package:flutter/material.dart';

class BottomImgStreetWidget extends StatelessWidget {
  const BottomImgStreetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/auth_screen/street.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}