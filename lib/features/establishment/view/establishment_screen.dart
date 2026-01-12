import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/establishment/provider/model.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';
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
    final theme = Theme.of(context);
    final model = context.watch<EstablishmentModel>();

    ScrollController scrollController = ScrollController();
    LinearGradient linearGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
        bottomNavigationBar: model.cart.isNotEmpty
            ? GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(left: 0, right: 0, bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: linearGradient,
                  ),
                  child: Row(
                    crossAxisAlignment: .center,
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: .min,
                        children: [
                          Text(
                            'В корзину',
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: .bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 25,
                            width: 25,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Text(
                                model.cart.length.toString(),
                                style: theme.textTheme.titleSmall!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${model.getSumAmount().toString()} р.',
                        style: theme.textTheme.bodyLarge!.copyWith(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => Scaffold(
                    body: Container(
                      padding: EdgeInsets.only(top: 50, left: 15, right: 15),
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisSize: .min,
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                'Корзина',
                                style: theme.textTheme.titleLarge,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  GestureDetector(
                                    onTap: () => context.router.maybePop(),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.primaryColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        'закрыть',
                                        style: theme.textTheme.bodySmall!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 200.0),
                            child: Text('В корзине ${model.cart.length} позиций'),
                          ),
                        ],
                      ),
                    ),
                    bottomNavigationBar: model.cart.isNotEmpty
                        ? GestureDetector(
                            onLongPress: () {
                              model.clearCart();
                              context.router.maybePop();
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 30,
                                right: 30,
                                bottom: 20,
                              ),
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(250),
                                gradient: linearGradient,
                              ),
                              child: Row(
                                mainAxisAlignment: .center,
                                mainAxisSize: .min,
                                children: [
                                  Text(
                                    'Очистить корзину',
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: .bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                  ),
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }
}
