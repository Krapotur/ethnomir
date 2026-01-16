import 'package:ethnomir/repositories/establishment/model/establishment.dart';
import 'package:flutter/material.dart';

class TitleEstablishmentWidget extends StatelessWidget {
  const TitleEstablishmentWidget({super.key, required this.establishment});

  final Establishment establishment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        Row(
          crossAxisAlignment: .center,
          children: [
            const Icon(Icons.coffee_outlined, size: 18),
            Text(
              establishment.establishmentTypeId,
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ],
    );
  }
}
