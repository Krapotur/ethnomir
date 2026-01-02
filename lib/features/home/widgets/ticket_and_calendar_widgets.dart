import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketAndCalendarWidgets extends StatelessWidget {
  const TicketAndCalendarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: .spaceEvenly,
      mainAxisSize: .min,
      children: [TicketWidget(), SizedBox(width: 10), CalendarWidget()],
    );
  }
}
