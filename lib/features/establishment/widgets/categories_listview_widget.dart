import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class CategoriesListviewWidget extends StatelessWidget {
  const CategoriesListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categories = [
      // Category(title: 'Популярное', imgTitle: 'baran'),
      Category(title: 'Горячее', fileId: 'hot'),
      Category(title: 'Напитки', fileId: 'drink'),
      Category(title: 'Детям', fileId: 'kids'),
      Category(title: 'Мангал', fileId: 'mangal'),
      Category(title: 'Салаты', fileId: 'salat'),
      Category(title: 'Десерт', fileId: 'desert'),
    ];
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
      ),
      child: ListView.separated(
        padding: EdgeInsets.only(left: 10, right: 15, bottom: 5),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryBtnContainerWidget(
          category: categories[index],
          isSelect: false,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
      ),
    );
  }
}
