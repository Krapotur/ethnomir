import 'package:flutter/material.dart';

class UnderLineWidget extends StatelessWidget {
  const UnderLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.4,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF47920),
      ),
    );
  }
}
