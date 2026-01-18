import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/cart/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbarWidget(),
          model.cart.isEmpty
              ? ImgEmptyCartWidget()
              : SliverToBoxAdapter(child: SizedBox.shrink()),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 20),
            sliver: SliverList.separated(
              itemCount: model.cart.length,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(
                        255,
                        235,
                        235,
                        235,
                      ).withValues(alpha: 0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: .min,
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: .start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/menu/${model.cart[index].fileId}.png',
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
                              model.cart[index].title,
                              style: theme.textTheme.titleMedium!.copyWith(
                                fontWeight: .bold,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: .center,
                              mainAxisSize: .min,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: const Color.fromARGB(
                                        255,
                                        194,
                                        194,
                                        194,
                                      ),
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
                                  index.toString(),
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
                                      color: const Color.fromARGB(
                                        255,
                                        194,
                                        194,
                                        194,
                                      ),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        '${model.cart[index].price} р.',
                        style: theme.textTheme.titleMedium!.copyWith(
                          fontWeight: .bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BtnConfirmOrderWidget(),
    );
  }
}
