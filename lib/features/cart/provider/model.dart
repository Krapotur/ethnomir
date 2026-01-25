import 'package:ethnomir/features/cart/provider/db.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class CartModel with ChangeNotifier {
  var logger = Logger(printer: PrettyPrinter());
  String activeCategory = '';
  List<Position> cart = [];
  List<Position> positionsList = positions;

  void addPosition({
    required Position position,
    required BuildContext context,
  }) {
    if (getQuantityPositionInCart() < 10) {
      if (!cart.contains(position)) {
        for (var el in cart) {
          if (el.id == position.id) {
            el.quantityInCart += 1;
          }
        }
        cart.add(position);
      } else {
        for (var el in cart) {
          if (el.id == position.id) {
            el.quantityInCart += 1;
          }
        }
      }
    } else {
      showScaffoldMessenger(context);
    }
    notifyListeners();
  }

  void removePosition({required Position position}) {
    for (var el in cart) {
      if (el.id == position.id) {
        if (el.quantityInCart > 0) {
          el.quantityInCart -= 1;
        }
      }
    }
    if (position.quantityInCart == 0) {
      cart.remove(position);
      position.quantityInCart = 1;
    }
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
      amount += getDiscontPrice(position: position) * position.quantityInCart;
    }
    return amount;
  }

  int getDiscontPrice({required Position position}) {
    int price;

    price =
        int.parse(position.price) -
        (int.parse(position.price) * (position.discont / 100)).round();

    return price;
  }

  String getQuantityPositionInOrder({required Position position}) {
    int quantity = position.quantityInCart;
    for (var el in cart) {
      if (el.id == position.id) {
        quantity = position.quantityInCart;
      }
    }

    return quantity.toString();
  }

  int getQuantityPositionInCart() {
    int quantity = 0;
    for (var el in cart) {
      quantity += el.quantityInCart;
    }

    return quantity;
  }

  void selectCategory({required Category category}) {
    activeCategory = category.title;
    getPositionsByCategory(category: category.title);
  }

  void getPositionsByCategory({required String category}) {
    List<Position> newPositionList = [];

    for (var position in positions) {
      if (position.positionCategoryId == category) {
        newPositionList.add(position);
      }
    }
    if (newPositionList.isNotEmpty) {
      positionsList = newPositionList;
    }

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
