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
          SliverListPositionsWidget(),
          model.cart.isNotEmpty
              ? PromocodeWidget()
              : SliverToBoxAdapter(child: SizedBox.shrink()),

          model.cart.isNotEmpty
              ? SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    child: Stack(
                      alignment: AlignmentGeometry.bottomRight,
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                              image: AssetImage('assets/images/banner.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10, bottom: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(185, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            mainAxisSize: .min,
                            children: [
                              Text(
                                'Широкая масленица',
                                style: theme.textTheme.titleMedium!.copyWith(
                                  fontWeight: .bold,
                                  height: 1,
                                ),
                              ),
                              Text(
                                '21 - 22 февраля',
                                style: theme.textTheme.titleMedium!.copyWith(
                                  fontWeight: .bold,
                                  height: 0.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : SliverToBoxAdapter(child: SizedBox.shrink()),
        ],
      ),
      bottomNavigationBar: const BtnConfirmOrderWidget(),
    );
  }
}
