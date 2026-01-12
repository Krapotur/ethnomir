import 'package:ethnomir/features/establishment/provider/model.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/repositories/position/model/position.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PositionContentWidget extends StatelessWidget {
  final Position position;
  const PositionContentWidget({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final model = context.read<EstablishmentModel>();

    return Column(
      mainAxisSize: .min,
      children: [
        Flexible(
          child: Text(
            position.title,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 14,
            ),
          ),
        ),
        Text(
          '${position.weight}г * ${position.caloric}ккал',
          style: TextStyle(fontSize: 10, color: theme.hintColor),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 35,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${position.price} руб',
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
                onTap: () =>
                    model.addPosition(position: position, context: context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
