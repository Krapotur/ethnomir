import 'package:ethnomir/features/positions/widgets/position/info_about_caloric.dart';
import 'package:flutter/material.dart';

class DescriptionPosition extends StatelessWidget {
  const DescriptionPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Шорпа из баранины',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            '200г',
            style: TextStyle(fontSize: 13, color: Theme.of(context).hintColor),
          ),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Описание:',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              Text(
                'Шурпа — заправочный суп или мясной бульон, распространённый в восточной кухне. Как правило, шурпу готовят из баранины, но есть и варианты из говядины или курицы',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 17),
          const Text(
            ' На 100г по открытым данным:',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          InfoAboutCaloric(),
        ],
      ),
    );
  }
}
