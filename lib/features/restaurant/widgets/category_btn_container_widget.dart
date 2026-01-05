import 'package:flutter/material.dart';

class CategoryBtnContainerWidget extends StatelessWidget {
  final String title;
  final bool isSelect;
  const CategoryBtnContainerWidget({
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

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: isSelect == true ? linearGradient : null,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: isSelect ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
