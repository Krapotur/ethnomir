import 'package:ethnomir/core/theme/theme.dart';
import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketWidget extends StatelessWidget {
  final ThemeTextScaler themeTextScaler;
  const TicketWidget({super.key, required this.themeTextScaler});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: InkWell(
        onTap: () {},
        child: CardWidget(
          isBasicPadding: false,
          isDefaultSize: false,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 178, 176),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/ticket.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Билет',
                        style: TextStyle(
                          height: 1,
                          fontSize: themeTextScaler.responsiveFontSize(
                            context,
                            15,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'в ЭтноМир',
                        style: TextStyle(
                          height: 1,
                          fontSize: themeTextScaler.responsiveFontSize(
                            context,
                            16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
