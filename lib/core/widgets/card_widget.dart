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
    BoxShadow boxShadowGreen = BoxShadow(
      color: Color.fromARGB(255, 1, 138, 138).withValues(alpha: 0.5),
      spreadRadius: 1,
      blurRadius: 5,
      offset: Offset(1, 1),
    );
    return Container(
      width: isBasicPadding != true
          ? MediaQuery.of(context).size.width / 2
          : null,
      height: isDefaultSize == true
          ? null
          : MediaQuery.of(context).size.width * 0.19,
      padding: isBasicPadding != true
          ? EdgeInsets.symmetric(horizontal: 10, vertical: 5)
          : EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 252, 252),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          isSelected != true
              ? BoxShadow(
                  color: const Color.fromARGB(
                    255,
                    197,
                    197,
                    197,
                  ).withValues(alpha: 0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(1, 1),
                )
              : boxShadowGreen,
        ],
      ),
      child: child,
    );
  }
}
