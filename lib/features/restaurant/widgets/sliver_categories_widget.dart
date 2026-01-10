import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SliverCategoriesWidget extends StatefulWidget {
  const SliverCategoriesWidget({super.key});

  @override
  State<SliverCategoriesWidget> createState() => _SliverCategoriesWidgetState();
}

class _SliverCategoriesWidgetState extends State<SliverCategoriesWidget> {
  bool isSelect = true;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      primary: false,
      pinned: true,
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(241, 255, 255, 255),
      surfaceTintColor: const Color.fromARGB(241, 255, 255, 255),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CategoriesListviewWidget(),
      ),
    );
  }
}
