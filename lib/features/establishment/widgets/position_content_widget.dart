import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/cart/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/repositories/position/model/position.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class PositionContentWidget extends StatelessWidget {
  final Position position;
  const PositionContentWidget({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final model = context.watch<CartModel>();

    return Column(
      mainAxisSize: .min,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              position.title,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 14,
                height: 0.9,
              ),
              maxLines: 2,
            ),
          ),
        ),
        Text(
          '${position.weight}${position.positionCategoryId == 'Напитки'?'мл' : 'г' } * ${position.caloric}ккал',
          style: TextStyle(fontSize: 10, color: theme.hintColor),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 35,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: [
                  position.discont > 0
                      ? Text(
                          '${model.getDiscontPrice(position: position)} р.',
                          style: theme.textTheme.titleSmall!.copyWith(
                            height: 0.5,
                            fontSize: 17,
                            color: Colors.red,
                          ),
                        )
                      : const SizedBox.shrink(),
                  Text(
                    '${position.price} р.',
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontSize: position.discont > 0 ? 12 : 17,
                      color: position.discont > 0
                          ? Colors.grey
                          : Colors.black87,
                      decoration: position.discont > 0
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                ],
              ),
              model.cart.contains(position)
                  ? ButtonsRemoveAndAddWidget(position: position)
                  : GestureDetector(
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
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        model.addPosition(position: position, context: context);
                      },
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
