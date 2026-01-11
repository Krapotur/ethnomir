import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class SliverInfoRestaurantWidget extends StatelessWidget {
  const SliverInfoRestaurantWidget({super.key, required this.establishment});

  final Establishment establishment;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CardInfoAboutEstablishmentWidget(establishment: establishment),
    );
  }
}
