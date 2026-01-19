import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/cart/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliverAppbarWidget extends StatelessWidget {
  const SliverAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final model = context.watch<CartModel>();

    return SliverAppBar(
      surfaceTintColor: Colors.white,
      pinned: true,
      title: Text(
        'Корзина',
        style: theme.textTheme.titleMedium!.copyWith(
          fontSize: 17,
          fontWeight: .bold,
        ),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => context.router.maybePop(),
        child: Icon(Icons.chevron_left, size: 35),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            onPressed: model.cart.isEmpty
                ? null
                : () {
                    showDialog(
                      context: context,
                      builder: (context) => CustomModalDialog(),
                    );
                  },
            icon: model.cart.isNotEmpty
                ? const Icon(
                    Icons.delete_outlined,
                    size: 25,
                    color: Colors.black87,
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          alignment: .topLeft,
          padding: EdgeInsets.only(left: 10, bottom: 10),
          child: Text(
            'В корзине ${model.cart.isEmpty ? 'пусто...' : 'позиций ${model.getQuantityPositionInCart()} на ${model.getSumAmount()} р.'}',
            style: theme.textTheme.titleLarge!.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
