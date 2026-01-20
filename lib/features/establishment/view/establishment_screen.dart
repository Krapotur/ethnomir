import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

@RoutePage()
class EstablishmentScreen extends StatefulWidget {
  final Establishment establishment;

  const EstablishmentScreen({super.key, required this.establishment});

  @override
  State<EstablishmentScreen> createState() => _EstablishmentScreenState();
}

class _EstablishmentScreenState extends State<EstablishmentScreen> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();
    final theme = Theme.of(context);
    ScrollController scrollController = ScrollController();

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppbarWidget(
              scrollController: scrollController,
              establishment: widget.establishment,
            ),
            // SliverInfoRestaurantWidget(establishment: widget.establishment),
            const SliverCategoriesWidget(),
            const SliverGridPositionsWidget(),
          ],
        ),
        floatingActionButton: model.cart.isNotEmpty
            ? const FloatingButtonCartWidget()
            : const SizedBox.shrink(),
        // bottomNavigationBar: model.cart.isNotEmpty
        //     ? BtnToCartWidget()
        //     : const SizedBox.shrink(),
      ),
    );
  }
}
