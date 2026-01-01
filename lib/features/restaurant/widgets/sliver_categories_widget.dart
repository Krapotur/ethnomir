import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SliverCategoriesWidget extends StatelessWidget {
  const SliverCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      primary: false,
      pinned: true,
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(10),
        child: CategoriesListviewWidget(),
      ),
    );
  }
}


