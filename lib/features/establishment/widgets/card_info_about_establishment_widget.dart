import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/core/widgets/card_widget.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/establishment/model/establishment.dart';
import 'package:flutter/material.dart';

class CardInfoAboutEstablishmentWidget extends StatelessWidget {
  const CardInfoAboutEstablishmentWidget({
    super.key,
    required this.establishment,
  });

  final Establishment establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Badge(
        isLabelVisible: establishment.isDeliveryFreeThreshold,
        offset: Offset(-50, -5),
        backgroundColor: Colors.transparent,
        alignment: .topCenter,
        label: Container(
          color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          child: const Text(
            "Скоро закроется",
            style: TextStyle(color: Colors.white),
          ),
        ),
        child: GestureDetector(
          child: CardWidget(
            child: Row(
              crossAxisAlignment: .center,
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    ImgRestaurantContainerWidget(establishment: establishment),
                    SizedBox(width: 10),
                    InfoAboutRestaurantWidget(establishment: establishment),
                  ],
                ),
                Icon(Icons.info_outline, color: Colors.grey),
              ],
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
                  top: MediaQuery.of(context).size.height / 4,
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
                          bottom: BorderSide(
                            color: theme.primaryColor,
                            width: 5,
                          ),
                        ),
                        borderRadius: const BorderRadiusDirectional.vertical(
                          top: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/rest/${establishment.fileId}.png',
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
                          context.router.maybePop();
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
                              TitleEstablishmentWidget(
                                establishment: establishment,
                              ),
                            ],
                          ),
                          Text(
                            '«${establishment.title}»',
                            style: theme.textTheme.titleLarge!.copyWith(
                              fontSize: 19,
                            ),
                          ),
                          Text(
                            '(${establishment.kitchen.toLowerCase()} кухня)',
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
        ),
      ),
    );
  }
}
