import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
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
        style: theme.textTheme.titleMedium!.copyWith(fontSize: 20),
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
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => CustomModalDialog(),
              );
            },
            icon: model.cart.isNotEmpty
                ? const Icon(
                    Icons.delete_sweep_outlined,
                    size: 33,
                    color: Colors.black87,
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: Container(
          alignment: .topLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'В корзине ${model.cart.isEmpty ? 'пусто...' : '${model.cart.length} товара на ${model.getSumAmount()} р.'}',
            style: theme.textTheme.titleLarge!.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class CustomModalDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();
    final theme = Theme.of(context);

    LinearGradient linearPrimaryGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            Text('Очистка корзины', style: theme.textTheme.titleLarge),
            const SizedBox(height: 15),
            Text(
              'Вы действительно хотите очистить корзину?',
              style: theme.textTheme.bodyMedium!.copyWith(fontSize: 17),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                model.clearCart();
                context.router.maybePop();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  gradient: linearPrimaryGradient,
                ),
                child: Text(
                  'Да, очистить',
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => context.router.maybePop(),
              child: Text(
                'Отменить',
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.primaryColor,
                  fontWeight: .bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // AlertDialog(
    //   contentPadding: EdgeInsets.all(50),
    //   title: Text('Очистка корзины', style: theme.textTheme.titleLarge,),
    //   content: Text('Вы действительно хотите очистить корзину?'),
    //   actions: [
    //     TextButton(
    //       onPressed: () {
    //         Navigator.of(context).pop();
    //       },
    //       child: Text('Cancel'),
    //     ),
    //     TextButton(
    //       onPressed: () {
    //         Navigator.of(context).pop();
    //       },
    //       child: Text('OK'),
    //     ),
    //   ],
    //   backgroundColor: Colors.white,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    // );
  }
}
