import 'package:flutter/material.dart';

class EventContainerWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String imgTitle;
  final bool? isTextColorWhite;

  const EventContainerWidget({
    super.key,
    required this.color,
    required this.title,
    required this.imgTitle,
    this.isTextColorWhite,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 117,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Stack(
            alignment: AlignmentGeometry.bottomRight,
            children: [
              Container(
                width: double.infinity,
                height: imgTitle == 'zoo' ? 80 : 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/$imgTitle.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 5),
          child: SizedBox(
            width: 100,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.bold,
                      color: isTextColorWhite != true
                          ? Colors.black
                          : Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
