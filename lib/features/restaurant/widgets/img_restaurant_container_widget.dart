import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class ImgRestaurantContainerWidget extends StatelessWidget {
  const ImgRestaurantContainerWidget({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("assets/images/rest/${restaurant.imgTitle}.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      onTap: () => showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 9,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                  height: 230,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: theme.primaryColor, width: 5),
                    ),
                    borderRadius: const BorderRadiusDirectional.vertical(
                      top: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/rest/${restaurant.imgTitle}.png',
                      ),
                    ),
                  ),
                  child: GestureDetector(
                    child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.close, color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      AutoRouter.of(context).maybePop();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          TitleRestaurantWidget(restaurant: restaurant),
                          RaitingWidget(raiting: restaurant.raiting),
                        ],
                      ),
                      Text(
                        '«${restaurant.title}»',
                        style: theme.textTheme.titleLarge!.copyWith(
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        '(${restaurant.kitchen.toLowerCase()} кухня)',
                        style: theme.textTheme.labelSmall,
                      ),
                      const SizedBox(height: 15),
                      // Text(
                      //   'Часы работы: 10:00 - 22:00',
                      //   style: theme.textTheme.labelSmall,
                      // ),
                      const Divider(),

                      // Flexible(
                      //   child: Text(
                      //     textDirection: TextDirection.ltr,
                      //     softWrap: true,
                      //     maxLines: 10,
                      //     'После долгой прогулки по парку, наполненной увлекательными приключениями, так хочется найти уютное место, чтобы подкрепиться, отдохнуть и не спеша обменяться полученными впечатлениями.',
                      //   ),
                      // ),
                      // Flexible(
                      //   child: Text(
                      //     textDirection: TextDirection.ltr,
                      //     softWrap: true,
                      //     maxLines: 10,
                      //     'Для этого идеально подходит ресторан восточной кухни «Чайхана»!',
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // bottomNavigationBar: ButtonAddCart(widget: widget),
        ),
      ),
    );
  }
}
