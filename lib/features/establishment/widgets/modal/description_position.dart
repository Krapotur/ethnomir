import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class DescriptionPosition extends StatelessWidget {
  final Position position;

  const DescriptionPosition({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            '${position.weight}г',
            style: TextStyle(fontSize: 13, color: Theme.of(context).hintColor),
          ),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                position.description,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          // const SizedBox(height: 17),
          // const Text(
          //   ' На 100г по открытым данным:',
          //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          // ),
          // InfoAboutCaloric(),
        ],
      ),
    );
  }
}
