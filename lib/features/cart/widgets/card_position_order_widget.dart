import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/cart/widgets/widgets.dart';
import 'package:ethnomir/features/establishment/widgets/discont_widget.dart';
import 'package:ethnomir/repositories/position/model/position.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardPositionOrderWidget extends StatelessWidget {
  const CardPositionOrderWidget({super.key, required this.position});

  final Position position;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final model = context.watch<CartModel>();

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisSize: .min,
        crossAxisAlignment: .end,
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
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
                child: SizedBox(
                  height: 80,
                  child: Stack(
                    children: [
                      position.discont > 0
                          ? DiscontWidget(discont: position.discont)
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 20),
              Column(
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    '${position.title}, ${position.weight}г',
                    style: theme.textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 15),
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
                    '${position.price * position.quantityInCart} р.',
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
            ],
          ),
          ButtonsRemoveAndAddWidget(position: position),
        ],
      ),
    );
  }
}
