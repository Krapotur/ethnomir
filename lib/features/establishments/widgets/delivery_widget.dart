import 'package:flutter/material.dart';

class DeliveryWidget extends StatelessWidget {
  const DeliveryWidget({
    super.key,
    required this.linearGradient,
    required this.delivery,
  });

  final LinearGradient linearGradient;
  final String delivery;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: linearGradient,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.run_circle, size: 18, color: Colors.white),
          const SizedBox(width: 5),
          Text(
            delivery.isEmpty ? 'Бесплатная' : '$deliveryр',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
