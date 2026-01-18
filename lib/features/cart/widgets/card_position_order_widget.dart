import 'package:ethnomir/features/cart/widgets/widgets.dart';
import 'package:ethnomir/repositories/position/model/position.dart';
import 'package:flutter/material.dart';

class CardPositionOrderWidget extends StatelessWidget {
  const CardPositionOrderWidget({super.key, required this.position});

  final Position position;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisSize: .min,
        crossAxisAlignment: .center,
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
            crossAxisAlignment: .start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/menu/${position.fileId}.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    position.title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontWeight: .bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ButtonsRemoveAndAddWidget(position: position),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              '${position.price} р.',
              style: theme.textTheme.titleMedium!.copyWith(
                fontWeight: .bold,
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
