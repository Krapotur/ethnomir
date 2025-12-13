import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventsWidget extends StatelessWidget {
  const EventsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<EventContainerWidget> eventsList = [
      EventContainerWidget(
        color: Color(0xFFE5FFAE),
        title: 'Анимация',
        imgTitle: 'animations',
      ),
      EventContainerWidget(
        color: Color(0xFFFF7272),
        title: 'Мастер - классы',
        isTextColorWhite: true,
        imgTitle: 'masters',
      ),
      EventContainerWidget(
        color: Color(0xFFC8F8FF),
        title: 'Зоопарки и питомники',
        imgTitle: 'zoo',
      ),
    ];

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Активности',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Все'), Icon(Icons.keyboard_arrow_right)],
            ),
          ],
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 120,
          child: ListView.separated(
            clipBehavior: Clip.hardEdge,
            scrollDirection: Axis.horizontal,
            itemCount: eventsList.length,
            itemBuilder: (context, index) => eventsList[index],
            separatorBuilder: (context, index) => SizedBox(width: 15),
          ),
        ),
        SizedBox(height: 5),
        Row(
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
