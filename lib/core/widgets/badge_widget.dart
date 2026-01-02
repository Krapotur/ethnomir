import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String title;
  final bool isAlignLeft;
  final bool? isDiscont;

  const BadgeWidget({
    super.key,
    this.isDiscont,
    required this.title,
    required this.isAlignLeft,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Align(
      alignment: isAlignLeft ? .topLeft : .topRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        decoration: BoxDecoration(
          color: isAlignLeft ? theme.primaryColor : Colors.green,
          borderRadius: isAlignLeft
              ? BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
        ),
        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
