import 'package:ethnomir/features/restaurant/widgets/card_position_widget.dart';
import 'package:flutter/material.dart';

class InfoAboutCaloric extends StatelessWidget {
  const InfoAboutCaloric({
    super.key,
    required this.widget,
  });

  final CardPositionWidget widget;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.highlightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('200',
                  style: theme.textTheme.labelSmall),
              Text('ккал', style: theme.textTheme.labelSmall),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('15г',
                  style: theme.textTheme.labelSmall),
              Text('белки', style: theme.textTheme.labelSmall),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('30г',
                  style: theme.textTheme.labelSmall),
              Text('жиры', style: theme.textTheme.labelSmall),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('50г',
                  style: theme.textTheme.labelSmall),
              Text('углеводы', style: theme.textTheme.labelSmall),
            ],
          ),
        ],
      ),
    );
  }
}
