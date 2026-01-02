import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketAndCalendarWidgets extends StatelessWidget {
  const TicketAndCalendarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [TicketWidget(), SizedBox(width: 10), CalendarWidget()],
    );
  }
}
