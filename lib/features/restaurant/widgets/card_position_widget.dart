import 'package:flutter/material.dart';

class CardPositionWidget extends StatelessWidget {
  const CardPositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(255, 233, 233, 233),
        ),
      ),

      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/menu/shorpa.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Суп',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  '360 г * 750 ккал',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: const Color.fromARGB(255, 241, 241, 241),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 25,
                        color: const Color.fromARGB(255, 96, 96, 96),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '550 р.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
