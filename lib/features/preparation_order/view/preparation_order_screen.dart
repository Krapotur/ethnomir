import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PreparationOrderScreen extends StatelessWidget {
  const PreparationOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Заказ №1',
          style: theme.textTheme.titleMedium!.copyWith(
            fontSize: 17,
            fontWeight: .bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(child: Image.asset('assets/images/status_img/waiting.png')),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 5, color: theme.primaryColor)),
        ),
        child: Center(child: Text('Доставка в номер отеля')),
      ),
    );
  }
}
