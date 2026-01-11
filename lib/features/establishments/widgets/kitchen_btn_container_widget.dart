import 'package:flutter/material.dart';

class KitchenBtnContainerWidget extends StatelessWidget {
  final String title;
  final bool isSelect;
  const KitchenBtnContainerWidget({
    super.key,
    required this.title,
    this.isSelect = false,
  });

  @override
  Widget build(BuildContext context) {
    LinearGradient linearGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelect == true ? null : Color(0xFFD4D4D4),
          gradient: isSelect == true ? linearGradient : null,
        ),
        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
