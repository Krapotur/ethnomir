import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class CardPositionWidget extends StatefulWidget {
  final Position position;
  const CardPositionWidget({super.key, required this.position});

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
        mainAxisSize: .min,
        children: [
          GestureDetector(
            child: SizedBox(
              height: 120,
              child: Stack(
                children: [
                  ImagePositionWidget(positionImg: widget.position.fileId),
                  widget.position.isNew
                      ? BadgeWidget(title: 'Новинка', isAlignLeft: false)
                      : SizedBox.shrink(),
                  widget.position.isPopular
                      ? BadgeWidget(title: 'Хит', isAlignLeft: true)
                      : SizedBox.shrink(),
                  widget.position.discont.isNotEmpty
                      ? Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 3,
                            ),
                            color: Colors.red,
                            child: Text(
                              "-${widget.position.discont}%",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) =>
                  InfoAboutPositionWidget(position: widget.position),
              // bottomNavigationBar: ButtonAddCart(widget: widget),
            ),
          ),
          const SizedBox(height: 5),
          PositionContentWidget(position: widget.position),
        ],
      ),
    );
  }
}
