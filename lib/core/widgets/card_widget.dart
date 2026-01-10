import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final bool? isSelected;
  final bool? isBasicPadding;
  final bool? isDefaultSize;

  const CardWidget({
    this.isSelected = false,
    this.isBasicPadding = true,
    this.isDefaultSize = true,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 252, 252),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(
              255,
              197,
              197,
              197,
            ).withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: child,
    );
  }
}
