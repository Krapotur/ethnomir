import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketAndCalendarWidgets extends StatelessWidget {
  const TicketAndCalendarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {},
          child: CardWidget(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 10,
                    bottom: 10,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 178, 176),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/ticket.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Билет'), Text('в ЭтноМир')],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
        InkWell(
          onTap: () {},
          child: CardWidget(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 10,
                    bottom: 10,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFBAB6),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/calendar.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Календарь'), Text('событий')],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
