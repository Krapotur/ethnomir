import 'package:ethnomir/core/theme/theme.dart';
import 'package:ethnomir/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketAndCalendarWidgets extends StatelessWidget {
  final ThemeTextScaler themeTextScaler;

  const TicketAndCalendarWidgets({super.key, required this.themeTextScaler});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceEvenly,
      mainAxisSize: .min,
      children: [
        TicketWidget(themeTextScaler: themeTextScaler),
        SizedBox(width: 10),
        CalendarWidget(themeTextScaler: themeTextScaler),
      ],
    );
  }
}
