import 'package:flutter/material.dart';

class PriceFoodWidget extends StatelessWidget {
  const PriceFoodWidget({
    super.key,
    required this.linearGradient,
    required this.price,
  });

  final LinearGradient linearGradient;
  final String price;

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
          const Icon(Icons.currency_ruble, size: 14, color: Colors.white),
          Text(price, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
