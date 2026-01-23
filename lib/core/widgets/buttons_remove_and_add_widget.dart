import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/repositories/position/model/position.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class ButtonsRemoveAndAddWidget extends StatelessWidget {
  const ButtonsRemoveAndAddWidget({super.key, required this.position});

  final Position position;

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: .center,
      mainAxisSize: .min,
      children: [
        GestureDetector(
          onTap: () {
            HapticFeedback.mediumImpact();
            model.removePosition(position: position);
          },
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 223, 223, 223),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.remove,
              color: Colors.black,
              size: 15,
              fontWeight: .bold,
            ),
          ),
        ),
        const SizedBox(width: 7),
        Text(
          model.getQuantityPositionInOrder(position: position),
          style: theme.textTheme.titleMedium!.copyWith(
            fontWeight: .bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 7),
        GestureDetector(
          onTap: () {
            HapticFeedback.mediumImpact();
            model.addPosition(position: position, context: context);
          },
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 223, 223, 223),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 15,
              fontWeight: .bold,
            ),
          ),
        ),
      ],
    );
  }
}
