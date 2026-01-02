import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventsWidget extends StatelessWidget {
  const EventsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<EventContainerWidget> eventsList = [
      const EventContainerWidget(
        color: Color(0xFFE5FFAE),
        title: 'Анимация',
        imgTitle: 'animations',
      ),
      const EventContainerWidget(
        color: Color(0xFFFF7272),
        title: 'Мастер - классы',
        isTextColorWhite: true,
        imgTitle: 'masters',
      ),
      const EventContainerWidget(
        color: Color(0xFFC8F8FF),
        title: 'Зоопарки и питомники',
        imgTitle: 'zoo',
      ),
    ];

    return Column(
      children: [
        Row(
          crossAxisAlignment: .end,
          mainAxisAlignment: .spaceBetween,
          children: [
            Text('Активности', style: theme.textTheme.titleLarge),
            Row(
              mainAxisAlignment: .center,
              children: [Text('Все'), Icon(Icons.keyboard_arrow_right)],
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 120,
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            scrollDirection: Axis.horizontal,
            itemCount: eventsList.length,
            itemBuilder: (context, index) => eventsList[index],
            separatorBuilder: (context, index) => const SizedBox(width: 15),
          ),
        ),
        const SizedBox(height: 5),
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            UnderLineWidget(),
            SizedBox(width: 5),
            UnderLineWidget(),
            SizedBox(width: 5),
            UnderLineWidget(),
          ],
        ),
      ],
    );
  }
}
