import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryBtnContainerWidget extends StatelessWidget {
  final Category category;
  const CategoryBtnContainerWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();

    return SizedBox(
      height: model.activeCategory == category.title ? 73 : 70,
      child: GestureDetector(
        onTap: () => model.selectCategory(category: category),
        child: Column(
          mainAxisSize: .min,
          children: [
            Container(
              height: model.activeCategory == category.title ? 72 : 70,
              width: model.activeCategory == category.title ? 72 : 70,
              decoration: BoxDecoration(
                border: model.activeCategory == category.title
                    ? Border.all(width: 2, color: Color(0xFFF47920))
                    : null,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/categories_img/${category.fileId}.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              category.title,
              style: TextStyle(
                color: model.activeCategory == category.title
                    ? Color(0xFFF47920)
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
