import 'package:flutter/material.dart';

class ContentCardRestoranWidget extends StatelessWidget {
  final String title;
  final String kitchen;
  final String price;
  final String imgTitle;

  const ContentCardRestoranWidget({
    super.key,
    required this.title,
    required this.kitchen,
    required this.price,
    required this.imgTitle,
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
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          Text(kitchen, style: TextStyle(fontSize: 15, color: Colors.grey)),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.white),
                    Text('4.6', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Spacer(flex: 1),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: linearGradient,
                ),
                child: Text('45 мин', style: TextStyle(color: Colors.white)),
              ),
              Spacer(flex: 1),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: linearGradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.run_circle, size: 18, color: Colors.white),
                    Text('Бесплатная', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Spacer(flex: 3),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: linearGradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.currency_ruble, size: 14, color: Colors.white),
                    Text(price, style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
