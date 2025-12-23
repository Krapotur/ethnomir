import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CategoriesListviewWidget extends StatelessWidget {
  const CategoriesListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        padding: EdgeInsets.only(right: 10, left: 10, bottom: 15),
        scrollDirection: Axis.horizontal,
        children: [
          CategoryBtnContainerWidget(title: 'Популярное', isSelect: true),
          CategoryBtnContainerWidget(title: 'Горячее'),
          CategoryBtnContainerWidget(title: 'Напитки'),
          CategoryBtnContainerWidget(title: 'Детское'),
          CategoryBtnContainerWidget(title: 'Мангал'),
        ],
      ),
    );
  }
}
