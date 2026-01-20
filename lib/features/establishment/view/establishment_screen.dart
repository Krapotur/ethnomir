import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:auto_route/auto_route.dart';
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

    LinearGradient linearPrimaryGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppbarWidget(
              scrollController: scrollController,
              establishment: widget.establishment,
            ),
            SliverInfoRestaurantWidget(establishment: widget.establishment),
            const SliverCategoriesWidget(),
            const SliverGridPositionsWidget(),
          ],
        ),
        floatingActionButton:  model.cart.isNotEmpty ? GestureDetector(
          onTap: () => context.router.push(CartRoute()),
          child: Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            decoration: BoxDecoration(
              gradient: linearPrimaryGradient,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisSize: .min,
              crossAxisAlignment: .center,
              children: [
                // FaIcon(FontAwesomeIcons.cartShopping),
                Icon(Icons.shopping_bag_outlined, size: 23, color: Colors.white),
                const SizedBox(width: 5),
                AnimatedFlipCounter(
                  value: model.getSumAmount(),
                  duration: const Duration(milliseconds: 500),
                  padding: const EdgeInsets.all(0),
                  curve: Curves.easeInToLinear,
                  wholeDigits: 2,
                  hideLeadingZeroes: true,
                  textStyle: theme.textTheme.bodyLarge!.copyWith(
                    fontSize: 15,
                    color: Colors.white,
                    height:1
                  ),
                ),
                Text(
                  ' р.',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    fontSize: 17,
                    color: Colors.white,
                    height: 1

                  ),
                ),
              ],
            ),
          ),
        ): const SizedBox.shrink(),
        // bottomNavigationBar: model.cart.isNotEmpty
        //     ? BtnToCartWidget()
        //     : const SizedBox.shrink(),
      ),
    );
  }
}
