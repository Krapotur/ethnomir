import 'package:ethnomir/features/establishments/widgets/content_card_establishment_widget.dart';
import 'package:ethnomir/repositories/establishment/model/establishment.dart';
import 'package:flutter/material.dart';

class CardEstablishmenttWidget extends StatelessWidget {
  final Establishment establishment;
  const CardEstablishmenttWidget({super.key, required this.establishment});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(
              255,
              205,
              205,
              205,
            ).withValues(alpha: 0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisSize: .min,
        children: [
          Badge(
            isLabelVisible: establishment.isDeliveryFreeThreshold,
            // offset: Offset(-50, -5),
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
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/rest/${establishment.fileId}.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ContentCardEstablishmentWidget(establishment: establishment),
        ],
      ),
    );
  }
}
