import 'package:ethnomir/features/restaurant/provider/model.dart';
import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliverCategoriesWidget extends StatefulWidget {
  const SliverCategoriesWidget({super.key});

  @override
  State<SliverCategoriesWidget> createState() => _SliverCategoriesWidgetState();
}

class _SliverCategoriesWidgetState extends State<SliverCategoriesWidget> {
  bool isSelect = true;

  @override
  Widget build(BuildContext context) {
    final model = context.watch<RestaurantModel>();

    return SliverAppBar(
      primary: false,
      pinned: true,
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(10),
        child: SizedBox(
          height: 40,
          child: ListView(
            padding: EdgeInsets.only(bottom: 10),
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () => model.selectCategory(),
                child: CategoryBtnContainerWidget(
                  title: 'Популярное',
                  isSelect: model.isSelect,
                ),
              ),
              GestureDetector(
                child: CategoryBtnContainerWidget(
                  title: 'Горячее',
                  isSelect: false,
                ),
              ),
              GestureDetector(
                child: CategoryBtnContainerWidget(
                  title: 'Напитки',
                  isSelect: false,
                ),
              ),
              GestureDetector(
                child: CategoryBtnContainerWidget(
                  title: 'Десерт',
                  isSelect: false,
                ),
              ),
              GestureDetector(
                child: CategoryBtnContainerWidget(
                  title: 'Мангал',
                  isSelect:false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
