import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class CartModel with ChangeNotifier {
  var logger = Logger(printer: PrettyPrinter());
  bool isSelect = false;
  List<Position> cart = [];

  void addPosition({
    required Position position,
    required BuildContext context,
  }) {
    if (cart.length < 5) {
      cart.add(position);
    } else {
      showScaffoldMessenger(context);
    }
    notifyListeners();
  }

  void removePosition(Position position) {
    cart.remove(position);
    notifyListeners();
  }

  void clearCart() {
    logger.w(cart.length);
    cart.clear();
    notifyListeners();
  }

  int getSumAmount() {
    int amount = 0;
    for (var position in cart) {
      amount += int.parse(position.price);
    }
    return amount;
  }

  void selectCategory() {
    logger.w(isSelect);
    isSelect ? isSelect = false : isSelect = true;
    notifyListeners();
  }

  void showScaffoldMessenger(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(
          SnackBar(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            content: Text(
              'Корзина переполнена!',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Color.fromARGB(255, 165, 50, 42),
          ),
        )
        .closed
        .then((_) => ScaffoldMessenger.of(context).clearSnackBars());
  }
}
