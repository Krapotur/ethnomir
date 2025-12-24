import 'package:flutter/material.dart';

class CardButtonWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? imgTitle;

  const CardButtonWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.imgTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(
              255,
              223,
              223,
              223,
            ).withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF3A3A3A),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    subTitle,
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                  Icon(Icons.chevron_right, size: 14, color: Colors.grey),
                ],
              ),
            ],
          ),

          imgTitle != null
              ? Container(
                  height: 300,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/menu/$imgTitle.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
