import 'package:flutter/material.dart';

class PositionContentWidget extends StatelessWidget {
  final String title;
  final String price;
  final String weight;

  const PositionContentWidget({
    super.key,
    required this.title,
    required this.price,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: .min,
      children: [
        Flexible(
          child: Text(
            title,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 14,
            ),
          ),
        ),
        Text(weight, style: TextStyle(fontSize: 10, color: theme.hintColor)),
        const SizedBox(height: 10),
        SizedBox(
          height: 35,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$price руб',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadiusDirectional.circular(30),
                  ),
                  child: const Icon(
                    Icons.add_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
