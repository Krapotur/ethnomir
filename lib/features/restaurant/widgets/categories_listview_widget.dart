import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class CategoriesListviewWidget extends StatelessWidget {
  const CategoriesListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categories = [
      // Category(title: 'Популярное', imgTitle: 'baran'),
      Category(title: 'Горячее', imgTitle: 'hot'),
      Category(title: 'Напитки', imgTitle: 'drink'),
      Category(title: 'Детское', imgTitle: 'kids'),
      Category(title: 'Мангал', imgTitle: 'mangal'),
      Category(title: 'Салаты', imgTitle: 'salat'),
      Category(title: 'Десерт', imgTitle: 'desert'),
    ];
    return SizedBox(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 5),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryBtnContainerWidget(
          category: categories[index],
          isSelect: false,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 15),
      ),
    );
  }
}
