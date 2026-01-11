import 'package:ethnomir/features/establishments/widgets/main_info_about_establishment.dart';
import 'package:ethnomir/features/establishments/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class ContentCardEstablishmentWidget extends StatelessWidget {
  final Establishment establishment;

  const ContentCardEstablishmentWidget({
    super.key,
    required this.establishment,
  });

  @override
  Widget build(BuildContext context) {
    LinearGradient linearGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainInfoAboutEstablishment(establishment: establishment),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: linearGradient,
                ),
                child: Text('45 мин', style: TextStyle(color: Colors.white)),
              ),
              Spacer(flex: 1),
              DeliveryWidget(
                linearGradient: linearGradient,
                delivery: establishment.delivery,
              ),
              Spacer(flex: 4),
            ],
          ),
        ],
      ),
    );
  }
}
