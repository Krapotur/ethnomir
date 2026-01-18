import 'package:flutter/material.dart';

class DiscontWidget extends StatelessWidget {
  const DiscontWidget({
    super.key,
    required this.discont,
  });

  final int discont;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 3,
          ),
          color: Colors.red,
          child: Text(
            "-$discont%",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  }
}
