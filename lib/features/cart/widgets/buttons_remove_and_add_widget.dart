import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/repositories/position/model/position.dart';
import 'package:flutter/material.dart';
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
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 194, 194, 194),
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
        const SizedBox(width: 10),
        Text(
          position.establishmentId.toString(),
          style: theme.textTheme.titleMedium!.copyWith(
            fontWeight: .bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 194, 194, 194),
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
      ],
    );
  }
}
