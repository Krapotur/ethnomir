import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardPositionWidget extends StatefulWidget {
  const CardPositionWidget({super.key});

  @override
  State<CardPositionWidget> createState() => _CardPositionWidgetState();
}

class _CardPositionWidgetState extends State<CardPositionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0.5,
          color: const Color.fromARGB(255, 230, 230, 230),
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          GestureDetector(
            child: SizedBox(
              height: 150,
              child: Stack(
                children: [
                  ImagePositionWidget(),
                  BadgeWidget(title: 'Новинка', isAlignLeft: false),
                  BadgeWidget(title: 'Хит', isAlignLeft: true),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 3,
                      ),
                      color: Colors.red,
                      child: const Text(
                        "-10%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => Scaffold(
                backgroundColor: Colors.transparent,
                body: InfoAboutPositionWidget(),
                // bottomNavigationBar: ButtonAddCart(widget: widget),
              ),
            ),
          ),
          const SizedBox(height: 10),
          PositionContentWidget(
            title: 'Шорпа из баранины',
            weight: '200г + 450ккал',
            price: '550',
          ),
        ],
      ),
    );
  }
}
