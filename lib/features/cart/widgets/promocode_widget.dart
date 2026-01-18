import 'package:flutter/material.dart';

class PromocodeWidget extends StatelessWidget {
  const PromocodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(
                255,
                226,
                225,
                225,
              ).withValues(alpha: 0.5),
              spreadRadius: 2,
              blurRadius: 3,
              // offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: .max,
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.percent_outlined,  color: theme.primaryColor,),
                const SizedBox(width: 15),
                Text('Промокод', style: theme.textTheme.titleSmall),
              ],
            ),
            Icon(Icons.chevron_right_outlined),
          ],
        ),
      ),
    );
  }
}
