import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/core/widgets/btn_to_back_widget.dart';
import 'package:ethnomir/features/establishment/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final model = context.watch<EstablishmentModel>();

    LinearGradient linearGradient = LinearGradient(
      colors: [Color(0xFFF47920), Color(0xFFFF9141)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина'),
        centerTitle: true,
      ),
      bottomNavigationBar: model.cart.isNotEmpty
          ? GestureDetector(
            onLongPress: ()=> model.clearCart(),
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                padding: EdgeInsets.symmetric( vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  gradient: linearGradient,
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  mainAxisSize: .min,
                  children: [
                    Text(
                      'Очистить корзину',
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : SizedBox.shrink(),
    );
  }
}
