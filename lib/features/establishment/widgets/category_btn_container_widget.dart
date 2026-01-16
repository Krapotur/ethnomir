import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class CategoryBtnContainerWidget extends StatelessWidget {
  final Category category;
  final bool isSelect;
  const CategoryBtnContainerWidget({
    super.key,
    required this.category,
    this.isSelect = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Column(
        mainAxisSize: .min,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Color(0xFFF47920)),
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/categories_img/${category.fileId}.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(category.title, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
