import 'package:auto_route/auto_route.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/cart/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool _localBlocker(bool stopDefaultButtonEvent, RouteInfo info) {
    debugPrint('Блокировка на странице 2');
    return true;
  }

  @override
  void initState() {
    super.initState();
    // Добавляем дополнительный блокировщик для этой страницы
    BackButtonInterceptor.add(
      _localBlocker,
      name: 'Page2Blocker',
      zIndex: 2000,
    );
  }

  @override
  void dispose() {
    BackButtonInterceptor.removeByName('Page2Blocker');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppbarWidget(),
            model.cart.isEmpty
                ? ImgEmptyCartWidget()
                : SliverToBoxAdapter(child: const SizedBox.shrink()),
            SliverListPositionsWidget(),
            model.cart.isNotEmpty
                ? PromocodeWidget()
                : SliverToBoxAdapter(child: const SizedBox.shrink()),

            model.cart.isNotEmpty
                ? SliverToBoxAdapter(child: const BannerWidget())
                : SliverToBoxAdapter(child: const SizedBox.shrink()),
          ],
        ),
        bottomNavigationBar: const BtnConfirmOrderWidget(),
      ),
    );
  }
}
